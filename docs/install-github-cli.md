The *install-github-cli.ps1* Script
===========================

This PowerShell script installs the GitHub command-line interface (CLI).

Parameters
----------
```powershell
/Repos/PowerShell/scripts/install-github-cli.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

Example
-------
```powershell
PS> ./install-github-cli.ps1
⏳ Installing GitHub CLI...
✔ GitHub CLI installed successfully in 17s - to authenticate execute: 'gh auth login'.

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
	Installs GitHub CLI
.DESCRIPTION
	This PowerShell script installs the GitHub command-line interface (CLI).
.EXAMPLE
	PS> ./install-github-cli.ps1
	⏳ Installing GitHub CLI...
	✔ GitHub CLI installed successfully in 17s - to authenticate execute: 'gh auth login'.
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	"⏳ Installing GitHub CLI..."
	$stopWatch = [system.diagnostics.stopwatch]::startNew()

	if ($IsMacOS) {
		& brew install gh
	} elseif ($IsLinux) {
		& sudo apt install gh
	} else {
		& winget install --id GitHub.cli
		if ($lastExitCode -ne 0) { throw "Installation of GitHub CLI failed, maybe it's already installed." }
	}
	[int]$elapsed = $stopWatch.Elapsed.TotalSeconds
	"✅ GitHub CLI installed successfully in $($elapsed)s - to authenticate execute: 'gh auth login'"
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*(page generated by convert-ps2md.ps1 as of 06/22/2025 10:37:36)*
