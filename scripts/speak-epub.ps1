﻿<#
.SYNOPSIS
	Speaks an Epub file by text-to-speech (TTS).
.DESCRIPTION
	This PowerShell script speaks the content of the given Epub file by text-to-speech (TTS).
.PARAMETER Filename
	Specifies the path to the Epub file
.EXAMPLE
	PS> ./speak-epub C:\MyBook.epub
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

#requires -version 5.1

param([string]$Filename = "")

function Speak { param([string]$Text)
	write-output "$Text"
	$Voice = new-object -ComObject SAPI.SPVoice
	$Voices = $Voice.GetVoices()
	foreach ($OtherVoice in $Voices) {
		$Description = $OtherVoice.GetDescription()
		if ($Description -like "*- English (United States)") {
			$Voice.Voice = $OtherVoice
			break
		}
	}
	[void]$Voice.Speak($Text)
}
 
function ReadBook() { param([string]$book, [string]$bookPath, [int]$lineNumber = 0)
	$data = Get-Content $book
	for([int]$i=$lineNumber;$i -lt $data.Count;$i++) {
		Set-Content -Path $bookPath"\progress.txt" -Value ($book+","+$i)
		$line = $data[$i]
		if ($line.Contains("<title>")) {
			$line = $line -Replace "<.+?>",""
		 	Speak $line
		}
		if ($line.contains("<p")) {
			$line = $line -Replace "<.+?>",""
			Speak $line
		}
	 }
	 Set-Content -Path $bookPath"\progress.txt" -Value ("")
}

function UnzipFile() { param([string]$file, [string]$dest)
	$shell = new-object -com shell.application
	$zip = $shell.NameSpace($file)
	foreach($item in $zip.items()) {
		$shell.Namespace($dest).copyhere($item)
	}
}
 
if ($Filename -eq "") {
	$Filename = Read-Host "Enter path to .epub file"
}
write-output "Reading $Filename ..."
$file = get-item $Filename
if (-not(Test-Path $file.DirectoryName+"\"+$file.Name+".zip")) {
	$zipFile = $file.DirectoryName+"\"+$file.Name+".zip"
	$file.CopyTo($zipFile)
}

$destination = $file.DirectoryName+"\"+$file.Name.Replace($file.Extension,"")
if (-not(Test-Path $destination)) {
	md $destination
	UnzipFile -file $zipFile -dest $destination
}
 
[xml]$container = Get-Content $destination"\META-INF\container.xml"
$contentFilePath = $container.container.rootfiles.rootfile."full-path"
[xml]$content = Get-Content $destination"\"$contentFilePath
$tmpPath = Get-Item $destination"\"$contentFilePath
$bookPath = $tmpPath.DirectoryName
$progress = $null
 
foreach($item in $content.package.manifest.Item) {
	if ($item."media-type" -eq "application/xhtml+xml") {
		if (Test-Path $bookPath+"\progress.txt") {
			$progress = Get-Content $bookPath"\progress.txt"
			$progress = $progress.Split(",")
		}
		$bookFileName = $item.href
		if ($progress.Count -eq 2) {
			if ($progress[0] -eq $bookPath+"\"+$bookFileName) {
				ReadBook -book $bookPath"\"$bookFileName -bookPath $bookPath -lineNumber $progress[1]
			}
		}
		else {
			ReadBook -book $bookPath"\"$bookFileName -bookPath $bookPath
		}
	}
}
exit 0 # success
