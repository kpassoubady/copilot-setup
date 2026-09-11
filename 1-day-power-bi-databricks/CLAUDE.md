# GitHub Copilot for Reporting Analysts Setup

Student-facing pre-class installation and verification materials for the one-day GitHub Copilot course using SQL, DAX, Power BI, and Databricks-compatible artifacts.

## Delivery Environment

- **Supported operating system:** Organization-managed Windows
- **Required tools:** Visual Studio Code, Git, GitHub Copilot, PowerShell 5.1 or later, Power BI Desktop
- **Optional access:** Organization-approved Databricks workspace; offline fixtures support delivery without it
- **Course data:** Synthetic materials only; never add client-sensitive data, production credentials, tokens, or private workspace URLs

## Project Structure

| Path | Purpose |
| :--- | :--- |
| `Welcome.md` | Student-facing pre-class message and checklist |
| `README.md` | Local entry point for this course setup |
| `install/` | Installation overview plus Windows and macOS guidance |
| `quickstart-project/` | Safe PowerShell verification script and run instructions |
| `../catalog/github-copilot-1-day-v2-holman-power-bi-databricks-track.md` | Authoritative course outline stored within this setup repository |

## Key Commands

Run from this course directory.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\quickstart-project\verify-setup.ps1
pwsh -NoProfile -File .\quickstart-project\verify-setup.ps1
```

Successful required checks end with:

```text
SETUP READY: required pre-class checks passed
```

## Content Conventions

- Keep every student-facing link within this setup repository.
- Do not name or link internal course-material repositories.
- Treat Windows as the supported learner path; macOS guidance must retain the approved Windows requirement for Power BI Desktop.
- Keep Databricks access optional unless the course outline changes; do not automate authentication or credential creation.
- Keep verification read-only, return a nonzero status for missing required checks, and separate manual or credential-dependent checks.
- Preserve security guidance covering client-sensitive data, credentials, proxies, certificates, data-loss prevention, and organization policy.
- Keep `Welcome.md` links absolute because the file can be exported or distributed outside GitHub.
