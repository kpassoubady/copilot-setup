$ErrorActionPreference = "Stop"

$failures = [System.Collections.Generic.List[string]]::new()
$warnings = [System.Collections.Generic.List[string]]::new()

function Write-Check {
    param(
        [string]$Name,
        [bool]$Passed,
        [string]$Details,
        [bool]$Required = $true
    )

    if ($Passed) {
        Write-Host "PASS  $Name - $Details"
        return
    }

    if ($Required) {
        Write-Host "FAIL  $Name - $Details"
        $failures.Add("$Name`: $Details")
    } else {
        Write-Host "CHECK $Name - $Details"
        $warnings.Add("$Name`: $Details")
    }
}

Write-Host "GitHub Copilot for Reporting Analysts - setup verification"
Write-Host "This script reads local version and installation information only."
Write-Host ""

$powerShellVersion = $PSVersionTable.PSVersion
Write-Check "PowerShell" ($powerShellVersion.Major -ge 5) $powerShellVersion.ToString()

$gitCommand = Get-Command git -ErrorAction SilentlyContinue
if ($gitCommand) {
    $gitOutput = @(& git --version 2>&1)
    $gitExitCode = $LASTEXITCODE
    $gitVersion = ($gitOutput | Select-Object -First 1).ToString().Trim()
    Write-Check "Git" ($gitExitCode -eq 0) $gitVersion
} else {
    Write-Check "Git" $false "git was not found in PATH"
}

$codeCommand = Get-Command code -ErrorAction SilentlyContinue
if ($codeCommand) {
    $codeOutput = @(& code --version 2>&1)
    $codeExitCode = $LASTEXITCODE
    $codeVersion = ($codeOutput | Select-Object -First 1).ToString().Trim()
    Write-Check "Visual Studio Code" ($codeExitCode -eq 0) $codeVersion

    $extensions = @(& code --list-extensions 2>$null)
    $copilotInstalled = $extensions | Where-Object { $_.Trim().ToLowerInvariant() -eq "github.copilot" }
    Write-Check "GitHub Copilot extension" ([bool]$copilotInstalled) "extension identifier GitHub.copilot"
} else {
    Write-Check "Visual Studio Code" $false "code was not found in PATH"
    Write-Check "GitHub Copilot extension" $false "cannot inspect extensions until code is available"
}

$isWindowsPlatform = $env:OS -eq "Windows_NT"
if ($isWindowsPlatform) {
    $powerBiPaths = @(
        "$env:ProgramFiles\Microsoft Power BI Desktop\bin\PBIDesktop.exe",
        "${env:ProgramFiles(x86)}\Microsoft Power BI Desktop\bin\PBIDesktop.exe",
        "$env:LOCALAPPDATA\Microsoft\WindowsApps\PBIDesktop.exe"
    )
    $powerBiFound = $powerBiPaths | Where-Object { $_ -and (Test-Path $_) } | Select-Object -First 1

    if (-not $powerBiFound -and (Get-Command Get-AppxPackage -ErrorAction SilentlyContinue)) {
        $powerBiPackage = Get-AppxPackage -Name Microsoft.MicrosoftPowerBIDesktop -ErrorAction SilentlyContinue
        $powerBiFound = [bool]$powerBiPackage
    }

    Write-Check "Power BI Desktop" ([bool]$powerBiFound) $(if ($powerBiFound) { "installation detected" } else { "installation was not detected" })
} else {
    Write-Check "Power BI Desktop" $false "confirm access to an approved Windows environment before class" $false
}

Write-Host ""
Write-Host "Manual checks required before class:"
Write-Host "[ ] GitHub Copilot is signed in with the licensed organization account"
Write-Host "[ ] Copilot Chat opens and an inline suggestion can appear in a temporary SQL file"
Write-Host "[ ] Prepared course materials are available in the location supplied for your class"
Write-Host "[ ] Power BI Desktop opens in the approved Windows environment"
Write-Host "[ ] Optional: the organization-provided Databricks workspace opens when live access is required"
Write-Host "[ ] No client-sensitive data, production credentials, or tokens are present in course files"
Write-Host ""

if ($warnings.Count -gt 0) {
    Write-Host "Manual follow-up checks: $($warnings.Count)"
}

if ($failures.Count -gt 0) {
    Write-Host "SETUP INCOMPLETE: $($failures.Count) required check(s) failed"
    $failures | ForEach-Object { Write-Host "- $_" }
    exit 1
}

Write-Host "SETUP READY: required pre-class checks passed"
exit 0
