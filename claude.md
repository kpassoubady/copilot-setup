# GitHub Copilot Course Setup Repository

## Project Overview

This repository provides installation and setup guides for multiple programming tracks, shared across the GitHub Copilot 1-Day and 2-Day Advanced training courses. It serves as the central hub for course participants to prepare their development environments before attending a training session.

Each course offering gets its own entry-point file, `Welcome-<Course>.md` (`Welcome-1Day.md` for the 1-Day course, `Welcome-Advanced2Day.md` for the 2-Day Advanced course), which links to the matching course catalog and the shared installation guide. Every client attending a given course is pointed at that same entry-point file; the installation guides and course catalogs are not duplicated per client.

## Course Tracks

The repository supports four distinct learning tracks:

1. **Java Track** - Spring Boot Personal Expense Tracker web application with H2 database
2. **Python Track** - FastAPI Personal Expense Tracker web application with SQLite
3. **.NET Track** - ASP.NET Core Personal Expense Tracker web application with SQLite
4. **Python Data Analysis Track** - Data analysis pipeline using Pandas, Matplotlib, and Seaborn

Each track includes OS-specific setup instructions for both macOS and Windows.

## Repository Structure

```
copilot-setup/
├── README.md                          # Quick project overview
├── Welcome-1Day.md                    # 1-Day course entry point: welcome and checklist
├── Welcome-Advanced2Day.md            # 2-Day Advanced course entry point: welcome and checklist
├── install.md                         # Shared installation guide (all clients, all tracks)
├── generic-install-mac.md             # Generic macOS setup
├── generic-install-win.md             # Generic Windows setup
├── catalog/
│   ├── github-copilot-1-day.md       # 1-Day course catalog and schedule
│   └── github-copilot-advanced-2-day.md # 2-Day Advanced course catalog and schedule
├── java/
│   ├── java-spring-boot-mac.md       # Java track macOS setup
│   └── java-spring-boot-windows.md   # Java track Windows setup
├── python/
│   ├── python-fastapi-mac.md         # Python track macOS setup
│   └── python-fastapi-windows.md     # Python track Windows setup
├── dotnet/
│   ├── dotnet-aspnetcore-mac.md      # .NET track macOS setup
│   └── dotnet-aspnetcore-windows.md  # .NET track Windows setup
├── data-analysis/
│   ├── python-data-analysis-mac.md   # Data analysis track macOS setup
│   └── python-data-analysis-windows.md # Data analysis track Windows setup
└── .claude/                           # Claude/Devin configuration
    ├── commands/                      # Custom commands
    └── feature-factory/               # Feature factory workflow
```

## Key Files

- **Welcome-\*.md** - Per-course entry point; start here for course overview and pre-class checklist (`Welcome-1Day.md`, `Welcome-Advanced2Day.md`)
- **install.md** - Shared entry point for installation instructions, used by every client and course length
- **catalog/github-copilot-1-day.md** - Complete 1-Day course outline and schedule
- **catalog/github-copilot-advanced-2-day.md** - Complete 2-Day Advanced course outline and schedule
- **generic-install-*.md** - OS-specific general setup (IDE, GitHub Copilot extension, etc.)
- **Track-specific files** - Language/framework-specific setup instructions

## Pre-Class Requirements

All participants must complete:

1. GitHub account with Copilot access enabled
2. IDE installation (VS Code for most tracks, Visual Studio for .NET)
3. GitHub Copilot extension installation and authentication
4. Track-specific prerequisites:
   - Java: JDK 21+
   - Python: Python 3.11+
   - .NET: .NET 9+ SDK
   - Data Analysis: Python 3.9+ with Jupyter

## Development Workflow

This repository uses:

- **Markdown** for all documentation
- **Markdown linting** (.markdownlint.json) for consistency
- **Git** for version control
- **GitHub** for hosting and collaboration
- **Custom commands** in `.claude/commands/` for automation

## Documentation Standards

- All documentation is in Markdown format
- Markdown linting rules are configured in `.markdownlint.json`
- Files to ignore for linting are listed in `.markdownlintignore`
- Documentation follows consistent structure across all tracks

## Common Tasks

### For Course Participants
1. Read the `Welcome-*.md` entry point you were given (e.g. `Welcome-1Day.md` or `Welcome-Advanced2Day.md`) for course overview
2. Follow `install.md` for your chosen track
3. Complete OS-specific setup from track-specific files
4. Verify all prerequisites are installed

### For Repository Maintainers
1. Update course content in `catalog/github-copilot-1-day.md` or `catalog/github-copilot-advanced-2-day.md`
2. Adding a new course offering: add a `Welcome-<Course>.md` linking to its catalog and to the shared `install.md`; point every client taking that course at the same file rather than forking one per client
3. Maintain track-specific setup guides
4. Keep prerequisites and tool versions current
5. Use custom commands in `.claude/commands/` for documentation updates
6. Follow markdown linting standards

## Recent Changes

- Standardized documentation structure across all tracks
- Updated IDE settings and configuration
- Ensured consistent formatting and markdown compliance

## Support and Questions

Participants encountering setup issues should reach out before the training day. Refer to the course catalog and installation guides for detailed troubleshooting steps.

## Related Resources

- 1-Day Course Catalog: `catalog/github-copilot-1-day.md`
- 2-Day Advanced Course Catalog: `catalog/github-copilot-advanced-2-day.md`
- Installation Guide (shared): `install.md`
- Welcome & Checklist (1-Day): `Welcome-1Day.md`
- Welcome & Checklist (2-Day Advanced): `Welcome-Advanced2Day.md`
