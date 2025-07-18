﻿<#
.SYNOPSIS
	Installs Git for Windows
.DESCRIPTION
	This PowerShell script installs Git for Windows.
.EXAMPLE
	PS> ./install-git-for-windows.ps1
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

#requires -version 5.1

try {
	"Installing Git for Windows, please wait..."

	& winget install --id Git.Git -e --source winget --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne 0) { throw "'winget install' failed" }

	"Git for Windows installed successfully."
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
