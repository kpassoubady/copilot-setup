# Windows Installation

Windows is the supported environment for **GitHub Copilot for Reporting Analysts** because the course uses Power BI Desktop.

## 1. Confirm Organization Requirements

Before installing software, confirm that your organization permits the required applications and that you have:

- A GitHub account with an assigned GitHub Copilot license
- Permission to install or update Visual Studio Code, Git, and Power BI Desktop
- Access to your organization's approved network, proxy, certificate, and sign-in process
- An organization-provided Databricks workspace URL if live Databricks access is part of your delivery

Do not disable security controls or use personal credentials to bypass an organization restriction. Contact your support team when installation or authentication is managed centrally.

## 2. Install Visual Studio Code

Download the current stable release from [Visual Studio Code](https://code.visualstudio.com/download), or use Windows Package Manager when your organization permits it:

```powershell
winget install --id Microsoft.VisualStudioCode --exact
```

Close and reopen your terminal after installation, then verify:

```powershell
code --version
```

## 3. Install Git

Download Git from [Git for Windows](https://git-scm.com/download/win), or use Windows Package Manager:

```powershell
winget install --id Git.Git --exact
```

Close and reopen your terminal, then verify:

```powershell
git --version
```

The labs use local branches, diffs, commits, and one controlled merge conflict. They do not require changing global Git configuration.

## 4. Enable GitHub Copilot in Visual Studio Code

1. Open Visual Studio Code.
2. Open **Extensions**.
3. Search for the extension published by **GitHub** with identifier `GitHub.copilot`.
4. Install or enable it if your organization has not deployed it automatically.
5. Sign in with the GitHub account that has your assigned Copilot license.
6. Open the Copilot menu and confirm that Chat is available.
7. Create a temporary `.sql` file, type a harmless comment such as `-- Return three sample rows`, and confirm that an inline suggestion can appear.
8. Delete the temporary file when finished.

Use the organization-approved Visual Studio Code and Copilot versions. Optional surfaces such as model selection, Agent mode, custom agents, skills, or Model Context Protocol tools can vary by policy and license; their absence does not block the offline course path.

You can inspect installed extension identifiers with:

```powershell
code --list-extensions
```

## 5. Confirm PowerShell

Windows PowerShell 5.1 is included with supported Windows installations. PowerShell 7 is also suitable when approved.

Verify the available version:

```powershell
$PSVersionTable.PSVersion
```

The course verification scripts require PowerShell 5.1 or later. Do not permanently weaken execution policy. Course commands use a process-scoped bypass only where necessary.

## 6. Install Power BI Desktop

Follow Microsoft's [Power BI Desktop installation guidance](https://learn.microsoft.com/power-bi/fundamentals/desktop-get-the-desktop) and use the Microsoft Store or approved enterprise installer selected by your organization.

After installation:

1. Open Power BI Desktop.
2. Allow any first-run initialization to finish.
3. Confirm that the application opens without an installation error.
4. Complete sign-in only if your organization and instructor require it.
5. Do not connect to production datasets for this course.

Power BI Desktop supports selected inspection and validation activities. Most course work uses text-based SQL, DAX, and reporting fixtures in Visual Studio Code.

## 7. Confirm Databricks Access When Required

Live Databricks access is optional because prepared offline fixtures are available. If your instructor says that your delivery uses a workspace:

1. Use only the workspace URL supplied by your organization.
2. Sign in through the approved identity provider.
3. Confirm that you can reach the assigned workspace or SQL environment.
4. Do not create tokens, clusters, warehouses, catalogs, or external connections unless explicitly authorized.
5. Do not copy production data or credentials into course files or Copilot prompts.

Treat this as a day-of-class access check; the local verification script does not attempt a Databricks connection.

## 8. Run the Setup Verification

From this course directory, run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\quickstart-project\verify-setup.ps1
```

If you use PowerShell 7:

```powershell
pwsh -NoProfile -File .\quickstart-project\verify-setup.ps1
```

The final line must be:

```text
SETUP READY: required pre-class checks passed
```

Power BI Desktop is checked on Windows. Copilot authentication, inline suggestions, Chat availability, prepared course-material access, and optional Databricks access still require the manual checks printed by the script.

## Troubleshooting

- If `code` or `git` is not recognized, close and reopen the terminal and Visual Studio Code.
- If Copilot is unavailable, confirm the signed-in GitHub account, assigned license, extension status, organization policy, and approved network path.
- If Power BI Desktop cannot be installed, contact your organization before class; do not substitute an unapproved download.
- If a proxy or certificate error occurs, preserve the exact sanitized message and contact your support team. Do not disable proxy, certificate, data-loss-prevention, or endpoint controls.
