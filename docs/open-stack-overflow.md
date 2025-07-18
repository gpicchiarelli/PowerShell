The *open-stack-overflow.ps1* Script
===========================

This script launches the Web browser with the Stack Overflow website.

Parameters
----------
```powershell
/Repos/PowerShell/scripts/open-stack-overflow.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./open-stack-overflow

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
	Opens the Stack Overflow website
.DESCRIPTION
	This script launches the Web browser with the Stack Overflow website.
.EXAMPLE
	PS> ./open-stack-overflow
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/open-default-browser.ps1" "https://stackoverflow.com"
exit 0 # success
```

*(page generated by convert-ps2md.ps1 as of 06/22/2025 10:37:39)*
