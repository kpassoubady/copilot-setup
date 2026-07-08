# Installation Instructions

This document provides the installation instructions for all projects in this GitHub Copilot course.

## General Prerequisites

Before starting your track-specific installation, please ensure you have installed Git, your preferred IDE (Visual Studio Code or IntelliJ IDEA), and GitHub Copilot. Click on the link for your operating system to view the detailed setup guide:

- [General Setup: macOS](./generic-install-mac.md)
- [General Setup: Windows](./generic-install-win.md)

## Clone the Starter Project

Each track's install guide uses a ready-to-run starter project. Clone the repo for your track before starting your track-specific setup — as a sibling of this repo (i.e. so `copilot-setup` and the starter repo share the same parent directory), since the track guides reference it by that relative path:

```bash
# Java Track
git clone https://github.com/kpassoubady/java-personal-expense-tracker.git

# Python Track
git clone https://github.com/kpassoubady/python-expense-tracker.git

# .NET Track
git clone https://github.com/kpassoubady/dot-net-expense-tracker.git

# Python Data Analysis Track
git clone https://github.com/kpassoubady/copilot-advanced-companion.git
```

You only need to clone the repo for your own track.

## Track-Specific Setup

Click on the links below to view the detailed instructions for your chosen platform.

| Project Name | Windows Installation                               | macOS Installation                               | Project Title                                                               |
|--------------|----------------------------------------------------|--------------------------------------------------|-----------------------------------------------------------------------------|
| Java Track    | [Windows](./java/java-spring-boot-windows.md) | [macOS](./java/java-spring-boot-mac.md) | Project 1: Spring Boot Personal Expense Tracker                                        |
| Python Track    | [Windows](./python/python-fastapi-windows.md) | [macOS](./python/python-fastapi-mac.md) | Project 2: Python Personal Expense Tracker (FastAPI)                                    |
| .NET Track      | [Windows](./dotnet/dotnet-aspnetcore-windows.md) | [macOS](./dotnet/dotnet-aspnetcore-mac.md) | Project 3: ASP.NET Core Personal Expense Tracker                                        |
| Python Data Analysis Track | [Windows](./data-analysis/python-data-analysis-windows.md) | [macOS](./data-analysis/python-data-analysis-mac.md) | Project 4: Data Analysis Pipeline with Pandas                               |

## Starter Project Repositories

Direct links to each track's starter repo on GitHub:

- Java Track: https://github.com/kpassoubady/java-personal-expense-tracker
- Python Track: https://github.com/kpassoubady/python-expense-tracker
- .NET Track: https://github.com/kpassoubady/dot-net-expense-tracker
- Python Data Analysis Track: https://github.com/kpassoubady/copilot-advanced-companion

## Additional Course Tools (Installed Later in the Course)

These two repos are covered later in the course, in dedicated showcase sessions — no need to install them now. They're plain Markdown collections (instructions, prompts, agents, skills) with their own `install.sh`/`install.ps1` scripts, so setup only takes a minute when you get to that part of the course. Listed here upfront so you know what's coming:

- [github-copilot-helper](https://github.com/kpassoubady/github-copilot-helper) — Portable GitHub Copilot customizations (instructions, prompts, rules, agents) you can install globally or per-project.
- [agent-hub](https://github.com/kpassoubady/agent-hub) — Reusable Claude Code agents, skills, and rules (including the `feature-factory` skill) that work across any project.
