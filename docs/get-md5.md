*get-md5.ps1*
================

This PowerShell script calculates and prints the MD5 checksum of the given file.

Parameters
----------
```powershell
PS> ./get-md5.ps1 [[-file] <String>] [<CommonParameters>]

-file <String>
    Specifies the path to the file
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./get-md5 C:\MyFile.txt
✔️ MD5 hash is 041E16F16E60AD250EB794AF0681BD4A

```

Notes
-----
Author: Markus Fleschutz | License: CC0

Related Links
-------------
https://github.com/fleschutz/PowerShell

Script Content
--------------
```powershell
<#
.SYNOPSIS
	Prints the MD5 checksum of a file
.DESCRIPTION
	This PowerShell script calculates and prints the MD5 checksum of the given file.
.PARAMETER file
	Specifies the path to the file
.EXAMPLE
	PS> ./get-md5 C:\MyFile.txt
	✔️ MD5 hash is 041E16F16E60AD250EB794AF0681BD4A
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$file = "")

try {
	if ($file -eq "" ) { $file = Read-Host "Enter path to file" }

	$Result = Get-Filehash $file -algorithm MD5

	"✔️ MD5 hash is $($Result.Hash)"
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(generated by convert-ps2md.ps1 using the comment-based help of get-md5.ps1 as of 12/16/2023 10:12:20)*