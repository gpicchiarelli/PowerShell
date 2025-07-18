The *introduce-powershell.ps1* Script
===========================

This PowerShell script introduces PowerShell to new users and gives an overview of it.

Parameters
----------
```powershell
/Repos/PowerShell/scripts/introduce-powershell.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./introduce-powershell.ps1

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
	Introducing PowerShell
.DESCRIPTION
	This PowerShell script introduces PowerShell to new users and gives an overview of it.
.EXAMPLE
	PS> ./introduce-powershell.ps1
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	Clear-Host
	""
	& "$PSScriptRoot/write-typewriter.ps1" " Hi $USERNAME, move into the fast lane by using . . ." 200
	""
	Write-Host "  _____                       _____ _          _ _ " -foregroundColor blue
	Write-Host " |  __ \                     / ____| |        | | |" -foregroundColor blue
	Write-Host " | |__) |____      _____ _ _| (___ | |__   ___| | |" -foregroundColor blue
	Write-Host " |  ___/ _ \ \ /\ / / _ \ '__\___ \| '_ \ / _ \ | |" -foregroundColor blue
	Write-Host " | |  | (_) \ V  V /  __/ |  ____) | | | |  __/ | |" -foregroundColor blue
	Write-Host " |_|   \___/ \_/\_/ \___|_| |_____/|_| |_|\___|_|_|" -foregroundColor blue
	""
	""
	$version = $PSVersionTable.PSVersion
	$edition = $PSVersionTable.PSEdition
	Write-Host " 🔷 " -noNewline
	& "$PSScriptRoot/write-typewriter.ps1" "Welcome to PowerShell $version $edition edition" 25
	""
	Write-Host " 🔷 " -noNewline
	& "$PSScriptRoot/write-typewriter.ps1" "PowerShell is open-source and free! It's available for Linux, Mac OS and Windows" 25
	""
	Write-Host " 🔷 " -noNewline
	& "$PSScriptRoot/write-typewriter.ps1" "Enhance PowerShell by 500+ PowerShell scripts! Get them from: https://github.com/fleschutz/PowerShell" 25
	""

	Write-Host " 🔷 " -noNewline
	& "$PSScriptRoot/write-typewriter.ps1" "Want to learn PowerShell? See the tutorial at: https://www.guru99.com/powershell-tutorial.html" 25
	""
	Write-Host " 🔷 " -noNewline
	& "$PSScriptRoot/write-typewriter.ps1" "Need docs? See the official documentation at: https://docs.microsoft.com/en-us/powershell" 25
	""
	Write-Host " 🔷 " -noNewline
	& "$PSScriptRoot/write-typewriter.ps1" "Want a cheat sheet? See: https://github.com/fleschutz/PowerShell/blob/master/docs/cheat-sheet.md" 25
	""
	Write-Host " 🔷 " -noNewline
	& "$PSScriptRoot/write-typewriter.ps1" "Got questions? See the FAQ at: https://github.com/fleschutz/PowerShell/blob/master/docs/FAQ.md" 25
	""
	Write-Host " 🔷 " -noNewline
	& "$PSScriptRoot/write-typewriter.ps1" "Want to support and donate? Just follow: https://www.paypal.com/paypalme/Fleschutz" 25
	""
	& "$PSScriptRoot/write-typewriter.ps1" "    NOTE: Use <Ctrl> + <Click> to open the links above in your browser" 100
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(page generated by convert-ps2md.ps1 as of 06/22/2025 10:37:37)*
