The *uninstall-new-outlook.ps1* Script
===========================

This PowerShell script uninstalls the new Outlook for Windows application.

Parameters
----------
```powershell
/Repos/PowerShell/scripts/uninstall-new-outlook.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./uninstall-new-outlook.ps1

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
	Uninstalls the new Outlook
.DESCRIPTION
	This PowerShell script uninstalls the new Outlook for Windows application.
.EXAMPLE
	PS> ./uninstall-new-outlook.ps1
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	"⏳ Uninstalling new Outlook for Windows..."

	Remove-AppxProvisionedPackage -AllUsers -Online -PackageName (Get-AppxPackage Microsoft.OutlookForWindows).PackageFullName
	
	"✅ New Outlook for Windows has been removed."
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(page generated by convert-ps2md.ps1 as of 06/22/2025 10:37:41)*
