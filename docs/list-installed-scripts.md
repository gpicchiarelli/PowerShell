The *list-installed-scripts.ps1* Script
===========================

This PowerShell script lists all installed PowerShell scripts.

Parameters
----------
```powershell
/Repos/PowerShell/scripts/list-installed-scripts.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./list-installed-scripts.ps1

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
	Lists all installed PowerShell scripts 
.DESCRIPTION
	This PowerShell script lists all installed PowerShell scripts.
.EXAMPLE
	PS> ./list-installed-scripts.ps1
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

Get-InstalledScript
exit # success
```

*(page generated by convert-ps2md.ps1 as of 06/22/2025 10:37:37)*
