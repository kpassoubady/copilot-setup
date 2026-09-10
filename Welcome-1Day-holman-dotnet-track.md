# Welcome to the GitHub Copilot 1-Day Training Course

Complete this setup before class to avoid delays.

## Course Overview

See the [GitHub Copilot 1-Day detailed outline](catalog/github-copilot-1-day-outline.md) for the course objectives and schedule.

The fully supported course path uses .NET 10, ASP.NET Core, Entity Framework Core 10, SQLite, Razor Pages, and xUnit. Java, Python, and data-analysis deliveries are facilitator-approved adaptations, not equal default tracks. An adaptation may be offered only when the facilitator has validated its stack-specific starter files, solutions, tests, commands, and timing.

## Pre-Class Setup for the Fully Supported Path

1. Confirm that you have a GitHub account with GitHub Copilot access.
2. Install Visual Studio Code and complete the general VS Code and GitHub Copilot setup for [macOS](generic-install-mac.md) or [Windows](generic-install-win.md).
3. Install the .NET 10 SDK by following the .NET setup guide for [macOS](dotnet/dotnet-aspnetcore-mac.md) or [Windows](dotnet/dotnet-aspnetcore-windows.md).
4. Install the Entity Framework Core command-line tools at major version 10.
5. Clone the `copilot-advanced-companion` repository.
6. Restore and build both 1-day starter solutions as shown below. Do not run their acceptance tests before class.
7. Open a starter project in Visual Studio Code and confirm that GitHub Copilot inline suggestions and Copilot Chat work.

### Verify .NET and Entity Framework Core

Install the Entity Framework Core tools if they are not already installed:

```bash
dotnet tool install --global dotnet-ef --version "10.*"
```

If `dotnet-ef` is already installed at an earlier version, update it:

```bash
dotnet tool update --global dotnet-ef --version "10.*"
```

Verify the installed major versions:

```bash
dotnet --version
dotnet ef --version
```

`dotnet --version` must report .NET 10, and `dotnet ef --version` must report Entity Framework Core tools 10.

### Clone, Restore, and Build the Starters

```bash
git clone https://github.com/kpassoubady/copilot-advanced-companion.git
cd copilot-advanced-companion

dotnet restore 1-day/breakout1-backend-dotnet/start/ExpenseTracker.slnx
dotnet build 1-day/breakout1-backend-dotnet/start/ExpenseTracker.slnx --no-restore

dotnet restore 1-day/breakout2-api-razor-dotnet/start/ExpenseTracker.slnx
dotnet build 1-day/breakout2-api-razor-dotnet/start/ExpenseTracker.slnx --no-restore
```

Both restore and build commands must succeed. The starter acceptance tests are intentionally incomplete exercise states, so do not run them as part of pre-class setup.

## Checklist Before Class

- [ ] GitHub account with GitHub Copilot access enabled
- [ ] Latest Visual Studio Code installed
- [ ] GitHub Copilot authenticated in Visual Studio Code
- [ ] GitHub Copilot inline suggestions verified
- [ ] Copilot Chat verified
- [ ] .NET 10 SDK installed and verified
- [ ] Entity Framework Core tools 10 installed and verified
- [ ] `copilot-advanced-companion` cloned
- [ ] Breakout 1 starter restored and built successfully
- [ ] Breakout 2 starter restored and built successfully

## Facilitator-Approved Adaptations

Do not substitute Java, Python, or data analysis for the .NET path unless the facilitator has approved that adaptation for your session and provided validated setup and exercise materials. When an adaptation is approved, follow the facilitator's instructions rather than assuming that its commands, tests, or timing match the .NET exercises.

The repository retains setup references for these possible adaptations:

| Adaptation | Setup links |
| --- | --- |
| Java with Spring Boot | [macOS](java/java-spring-boot-mac.md) \| [Windows](java/java-spring-boot-windows.md) |
| Python with FastAPI | [macOS](python/python-fastapi-mac.md) \| [Windows](python/python-fastapi-windows.md) |
| Python data analysis | [macOS](data-analysis/python-data-analysis-mac.md) \| [Windows](data-analysis/python-data-analysis-windows.md) |

## Quick Links

| Resource | Link |
| --- | --- |
| Detailed course outline | [GitHub Copilot 1-Day](catalog/github-copilot-1-day-outline.md) |
| General setup | [macOS](generic-install-mac.md) \| [Windows](generic-install-win.md) |
| .NET 10 setup | [macOS](dotnet/dotnet-aspnetcore-mac.md) \| [Windows](dotnet/dotnet-aspnetcore-windows.md) |
| Learner exercises | [copilot-advanced-companion 1-day exercises](https://github.com/kpassoubady/copilot-advanced-companion/blob/main/1-day/Exercises-1-day.md) |

## Need Help

If you run into setup issues, reach out before class.
