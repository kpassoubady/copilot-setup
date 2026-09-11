# Installation Guide

This guide prepares your computer for **GitHub Copilot for Reporting Analysts**, a one-day course using SQL, DAX, text-based Power BI artifacts, and Databricks-compatible files.

## Supported Environment

The supported learner environment is an organization-managed Windows computer with:

- Visual Studio Code
- Git
- GitHub Copilot access in Visual Studio Code
- Windows PowerShell 5.1 or PowerShell 7
- Power BI Desktop
- Access to the prepared course materials

Approved Databricks workspace access is useful for selected demonstrations but is not required for the offline lab checks. Do not enter client-sensitive data, credentials, tokens, or production information into prompts or course files.

## Choose Your Guide

- [Windows installation](install-win.md) — supported course path
- [macOS preparation](install-mac.md) — prepares GitHub Copilot and Git, but requires an approved Windows environment for Power BI Desktop

## Before Class

1. Complete the guide for your operating system.
2. Run the [setup verification](../quickstart-project/README.md).
3. Confirm that Visual Studio Code can display GitHub Copilot Chat and inline suggestions.
4. Confirm that Git can create and inspect a local repository.
5. On Windows, open Power BI Desktop once and complete any organization-required sign-in or update steps.
6. If your instructor requires Databricks, use only the organization-provided workspace URL and authentication process.

The successful local verification ends with:

```text
SETUP READY: required pre-class checks passed
```

Databricks authentication, organization policy, licensing, proxy access, and instructor-provided course-material access are reported as day-of-class checks rather than automated failures.
