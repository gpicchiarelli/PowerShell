The *open-m-drive.ps1* Script
===========================

This script launches the File Explorer with the M: drive folder.

Parameters
----------
```powershell
/Repos/PowerShell/scripts/open-m-drive.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./open-m-drive

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
	Opens the M: drive folder
.DESCRIPTION
	This script launches the File Explorer with the M: drive folder.
.EXAMPLE
	PS> ./open-m-drive
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/open-file-explorer.ps1" "M:"
exit 0 # success
```

*(page generated by convert-ps2md.ps1 as of 06/22/2025 10:37:39)*
