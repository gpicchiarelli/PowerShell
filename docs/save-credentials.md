The *save-credentials.ps1* Script
===========================

This PowerShell script asks for credentials and saves them encrypted into a target file.

Parameters
----------
```powershell
/Repos/PowerShell/scripts/save-credentials.ps1 [[-targetFile] <String>] [<CommonParameters>]

-targetFile <String>
    Specifies the target file ("~\my.credentials" by default)
    
    Required?                    false
    Position?                    1
    Default value                ~\my.credentials
    Accept pipeline input?       false
    Aliases                      
    Accept wildcard characters?  false

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./save-credentials.ps1
Enter username and password, please.
	✅ Your credentials have been saved to C:\Users\Markus\my.credentials (encrypted).

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
	Saves credentials encrypted
.DESCRIPTION
	This PowerShell script asks for credentials and saves them encrypted into a target file.
.PARAMETER targetFile
	Specifies the target file ("~\my.credentials" by default)
.EXAMPLE
	PS> ./save-credentials.ps1
	Enter username and password, please.
 	✅ Your credentials have been saved to C:\Users\Markus\my.credentials (encrypted).
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$targetFile = "~\my.credentials")

try {
	Write-Host "Enter username and password, please." -foreground red
	$cred = Get-Credential
	$cred.Password | ConvertFrom-SecureString | Set-Content "$targetFile"
	"✅ Your credentials have been saved to $targetFile (encrypted)."
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(page generated by convert-ps2md.ps1 as of 06/22/2025 10:37:41)*
