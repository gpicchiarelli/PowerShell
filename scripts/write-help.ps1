﻿<#
.SYNOPSIS
        Provide help to the user
.DESCRIPTION
        This PowerShell script launches new tabs in the Web browser with help pages.
.EXAMPLE
        PS> ./open-help.ps1
.LINK
        https://github.com/fleschutz/PowerShell
.NOTES
        Author: Markus Fleschutz | License: CC0
#>

function Line ([string]$line) {
	Write-Host $line -foregroundColor white -backgroundColor black
}

try {
	""
	Line "█████████████████████████████████████"
	Line "█████████████████████████████████████"
	Line "████ ▄▄▄▄▄ █▀ █▀▀█▀▀  ▄▄██ ▄▄▄▄▄ ████ POWERSHELL $($PSVersionTable.PSVersion) $($PSVersionTable.PSEdition) edition"
	Line "████ █   █ █▀ ▄ █▀ ▀ ▀▄█ █ █   █ ████"
	Line "████ █▄▄▄█ █▀█ █▄▀▄▀ ▀ ▄▄█ █▄▄▄█ ████ Documentation: https://docs.microsoft.com/en-us/powershell"
	Line "████▄▄▄▄▄▄▄█▄█▄█ █▄█ █▄▀ █▄▄▄▄▄▄▄████"
	Line "████▄▄  ▄█▄▄  ▄█▄▄ █▀ ▀▀▀ ▀▄▀▄█▄▀████ Tutorial: https://www.guru99.com/powershell-tutorial.html"
	Line "████▀▄▄█▀█▄██ ▀ ▄▄▀ █▄█▀ ▀ ▄▀▀█▀█████"
	Line "█████ ▄▄█▄▄▀▄ ▀▄▀ ▄▄  ▀ ▀▀▀ ▀▄▄█▀████ FAQ's: https://github.com/fleschutz/PowerShell/blob/main/docs/FAQ.md"
	Line "████▄ ▀ ▄ ▄▄█  █▀██▄ ██▀▄█▄▄▀▄▄▀█████"
	Line "████  ████▄▄  ▄█▄▄▄██  ▀ ▀▀▀▀▄ █▀████ Cheat Sheet: https://github.com/fleschutz/PowerShell/blob/main/docs/cheat-sheet.md"
	Line "████ ███▄ ▄▀▀██ ▄█ ▄▄▄█▀ ▄▄ ██▄▀█████"
	Line "████▄█▄███▄▄▀▄▄▄▀ ▄▄ ▄▀▄ ▄▄▄ ▀   ████ NOTE: Use <Ctrl> + <Click> to open the links in your browser."
	Line "████ ▄▄▄▄▄ █▄▄▄█▀█▄  ██  █▄█ ▄▄█▀████"
	Line "████ █   █ █ ▀▄█▄ ▄▄  ▀█ ▄▄▄▄▀   ████"
	Line "████ █▄▄▄█ █ ██ ▄█▄  ▄▀▀▀ ▄▄  ▄ █████"
	Line "████▄▄▄▄▄▄▄█▄▄█▄▄████▄▄▄██▄▄▄█▄██████"
	Line "█████████████████████████████████████"
	Line "█████████████████████████████████████"
	""
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}