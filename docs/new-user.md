The *new-user.ps1* Script
===========================

This PowerShell script creates a new user account with an encrypted home directory.

Parameters
----------
```powershell
/Repos/PowerShell/scripts/new-user.ps1 [[-username] <String>] [<CommonParameters>]

-username <String>
    
    Required?                    false
    Position?                    1
    Default value                
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
PS> ./new-user.ps1 Joe
✅ Created user account 'Joe' with encrypted home directory in 11s.

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
	Create a new user
.DESCRIPTION
	This PowerShell script creates a new user account with an encrypted home directory.
.EXAMPLE
	PS> ./new-user.ps1 Joe
	✅ Created user account 'Joe' with encrypted home directory in 11s.
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$username = "")

try {
	if ($username -eq "") { $username = Read-Host "Enter the new user name" }
	$stopWatch = [system.diagnostics.stopwatch]::startNew()

	if ($IsLinux) {
 		& sudo apt install ecryptfs-utils
		& sudo adduser --encrypt-home $username
	} else {
		throw "Not supported yet"
	}

	[int]$elapsed = $stopWatch.Elapsed.TotalSeconds
	"✅ Created user account '$username' with encrypted home directory in $($elapsed)s."
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(page generated by convert-ps2md.ps1 as of 06/22/2025 10:37:39)*
