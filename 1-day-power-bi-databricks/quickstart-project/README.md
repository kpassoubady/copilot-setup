# Verify Your Setup

Run this safe, read-only verification after completing the installation guide. It checks the local tools required for **GitHub Copilot for Reporting Analysts** and does not sign in, connect to Databricks, access course data, or change system settings.

## Windows

Open PowerShell in the `1-day-power-bi-databricks` directory and run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\quickstart-project\verify-setup.ps1
```

If PowerShell 7 is installed, you can use:

```powershell
pwsh -NoProfile -File .\quickstart-project\verify-setup.ps1
```

The required automated checks are:

- PowerShell 5.1 or later
- Git available in `PATH`
- Visual Studio Code `code` command available in `PATH`
- GitHub Copilot extension identifier `GitHub.copilot` installed
- Power BI Desktop installation detected

## macOS

Run:

```bash
pwsh -NoProfile -File ./quickstart-project/verify-setup.ps1
```

The script checks PowerShell, Git, Visual Studio Code, and the GitHub Copilot extension. It reports Power BI Desktop as a manual follow-up because the complete supported course environment requires Windows.

## Expected Result

When every required local check passes, the final line is:

```text
SETUP READY: required pre-class checks passed
```

A failed required check produces a nonzero exit status and ends with `SETUP INCOMPLETE`.

## Manual Checks

The script cannot safely prove account, license, organization-policy, or remote-service readiness. Complete the checklist it prints:

- Sign in to GitHub Copilot with the licensed organization account.
- Open Copilot Chat and confirm an inline suggestion in a temporary SQL file.
- Confirm access to the prepared course materials supplied for your class.
- Open Power BI Desktop in the approved Windows environment.
- If live Databricks access is required, open only the organization-provided workspace.
- Keep client-sensitive information, production credentials, and tokens out of course files and prompts.

Do not weaken proxy, certificate, data-loss-prevention, endpoint, or organization controls to make a check pass. Share only sanitized error text with your support team.
