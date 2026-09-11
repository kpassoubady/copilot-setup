# macOS Preparation

The course's supported delivery environment is Windows because Power BI Desktop does not provide a native macOS application. A Mac can be used to prepare Visual Studio Code, Git, GitHub Copilot, and PowerShell, but Power BI activities require an organization-approved Windows computer, managed virtual desktop, or other Windows environment supplied by your organization.

Do not create an unapproved virtual machine or bypass organization security controls. Confirm the Windows arrangement with your instructor or support team before class.

## 1. Install Homebrew When Approved

If Homebrew is already approved and installed, verify it:

```bash
brew --version
```

If it is not installed, follow the official instructions at [Homebrew](https://brew.sh/) only when your organization permits it. You can instead use the direct downloads in the following sections.

## 2. Install Visual Studio Code

Download the current stable release from [Visual Studio Code](https://code.visualstudio.com/download), or use Homebrew:

```bash
brew install --cask visual-studio-code
```

In Visual Studio Code, run **Shell Command: Install 'code' command in PATH** from the Command Palette, reopen Terminal, and verify:

```bash
code --version
```

## 3. Install Git

Install the Apple command-line tools:

```bash
xcode-select --install
```

Or, when Homebrew is approved:

```bash
brew install git
```

Verify:

```bash
git --version
```

## 4. Enable GitHub Copilot in Visual Studio Code

1. Open Visual Studio Code.
2. Open **Extensions**.
3. Search for the extension published by **GitHub** with identifier `GitHub.copilot`.
4. Install or enable it if your organization has not deployed it automatically.
5. Sign in with the GitHub account that has your assigned Copilot license.
6. Confirm that Copilot Chat is visible.
7. Create a temporary `.sql` file and confirm that an inline suggestion can appear.
8. Delete the temporary file when finished.

Inspect installed extension identifiers with:

```bash
code --list-extensions
```

Feature availability can vary by license and organization policy. Offline evidence supports features that are unavailable during delivery.

## 5. Install PowerShell 7

The prepared local checks are PowerShell scripts. Install PowerShell 7 when approved:

```bash
brew install --cask powershell
```

Verify:

```bash
pwsh --version
```

## 6. Arrange the Required Windows Environment

Before class, confirm access to an organization-approved Windows environment that has:

- Power BI Desktop installed and able to open
- Visual Studio Code, Git, and GitHub Copilot available if that Windows environment will be used for all labs
- Access to the prepared course materials
- The approved organization network, proxy, certificates, and identity controls

Do not treat browser-based Power BI access as a full replacement for Power BI Desktop unless the instructor explicitly approves that delivery adaptation.

## 7. Confirm Databricks Access When Required

Databricks access is optional because the course includes offline fixtures. If live access is required, use only the organization-provided workspace URL and authentication process. Do not create credentials or connect production data for the course.

## 8. Run the Local Setup Verification

From this course directory, run:

```bash
pwsh -NoProfile -File ./quickstart-project/verify-setup.ps1
```

The final line must be:

```text
SETUP READY: required pre-class checks passed
```

On macOS, the script reports Power BI Desktop as a required manual Windows-environment check. A successful Mac run verifies only the local tools; it does not certify that the complete supported Windows environment is ready.

## Troubleshooting

- If `code` is not found, install its shell command from the Visual Studio Code Command Palette and reopen Terminal.
- If Copilot is unavailable, verify the signed-in GitHub account, assigned license, extension status, organization policy, and approved network path.
- If `pwsh` is not found, reopen Terminal after installation.
- If the required Windows environment is unavailable, contact the instructor before class rather than using an unapproved workaround.
