The *open-office-365.ps1* Script
===========================

This script launches the Web browser with the Microsoft Office 365 website.

Parameters
----------
```powershell
/Repos/PowerShell/scripts/open-office-365.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./open-office-365

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
	Opens Microsoft Office 365
.DESCRIPTION
	This script launches the Web browser with the Microsoft Office 365 website.
.EXAMPLE
	PS> ./open-office-365
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/open-default-browser.ps1" "https://portal.office.com"
exit 0 # success
```

*(page generated by convert-ps2md.ps1 as of 06/22/2025 10:37:39)*
