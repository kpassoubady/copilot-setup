# Project 3: ASP.NET Core Personal Expense Tracker Installation Guide (macOS)

<!-- markdownlint-disable MD033 MD029 MD010-->
<!-- TOC -->

- [Project 3: ASP.NET Core Personal Expense Tracker Installation Guide macOS](#project-3-aspnet-core-personal-expense-tracker-installation-guide-macos)
    - [Step 1: Install .NET SDKTSDK'>Step 1: Install .NET SDK](#step-1-install-net-sdktsdkstep-1-install-net-sdk)
        - [Verify Installationallation'>Verify Installation](#verify-installationallationverify-installation)
    - [Step 2: Install Entity Framework Core Toolsols'>Step 2: Install Entity Framework Core Tools](#step-2-install-entity-framework-core-toolsolsstep-2-install-entity-framework-core-tools)
    - [Step 3: Install GitallGit'>Step 3: Install Git](#step-3-install-gitallgitstep-3-install-git)
    - [Project SetupectSetup'>Project Setup](#project-setupectsetupproject-setup)
        - [Quick Start Recommendedended'>Quick Start Recommended](#quick-start-recommendedendedquick-start-recommended)
        - [Create ASP.NET Core Project from Scratchtch'>Create ASP.NET Core Project from Scratch](#create-aspnet-core-project-from-scratchtchcreate-aspnet-core-project-from-scratch)
        - [Install NuGet Packagesackages'>Install NuGet Packages](#install-nuget-packagesackagesinstall-nuget-packages)
        - [Test Project SetupctSetup'>Test Project Setup](#test-project-setupctsetuptest-project-setup)
    - [IDE SetupIDESetup'>IDE Setup](#ide-setupidesetupide-setup)
        - [Visual Studio Code Extensionsnsions'>Visual Studio Code Extensions](#visual-studio-code-extensionsnsionsvisual-studio-code-extensions)
        - [Visual Studio for Mac Alternativeive'>Visual Studio for Mac Alternative](#visual-studio-for-mac-alternativeivevisual-studio-for-mac-alternative)
    - [Database SetupaseSetup'>Database Setup](#database-setupasesetupdatabase-setup)
        - [SQLite Database Defaultfault'>SQLite Database Default](#sqlite-database-defaultfaultsqlite-database-default)
        - [SQL Server Optionalional'>SQL Server Optional](#sql-server-optionalionalsql-server-optional)
    - [Verificationification'>Verification](#verificationificationverification)
    - [Troubleshootingeshooting'>Troubleshooting](#troubleshootingeshootingtroubleshooting)
        - [Common Issues and Solutions](#common-issues-and-solutions)
        - [Technology Stack Summary](#technology-stack-summary)
        - [Next Steps](#next-steps)

<!-- /TOC -->
<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

## Step 1: Install .NET SDKTSDK'></a>Step 1: Install .NET SDK

Install .NET 9+ SDK using Homebrew:

```bash
brew install --cask dotnet-sdk
```

Alternatively, download from [Microsoft .NET Downloads](https://dotnet.microsoft.com/download/dotnet/9.0).

### Verify Installationallation'></a>Verify Installation

```bash
dotnet --version
# Expected: 9.0.x or higher

dotnet --list-sdks
# Should show .NET 9.0+ SDK installed
```

Add .NET tools to your PATH (if not already):

```bash
echo 'export PATH="$PATH:$HOME/.dotnet/tools"' >> ~/.zshrc
source ~/.zshrc
```

## Step 2: Install Entity Framework Core Toolsols'></a>Step 2: Install Entity Framework Core Tools

Install EF Core CLI tools globally:

```bash
dotnet tool install --global dotnet-ef
```

If already installed, update to the latest version:

```bash
dotnet tool update --global dotnet-ef
```

Verify installation:

```bash
dotnet ef --version
# Expected: Entity Framework Core .NET Command-line Tools 9.x.x
```

## Step 3: Install GitallGit'></a>Step 3: Install Git

Install Git using Homebrew:

```bash
brew install git
```

Configure Git with your information:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

Verify Git installation:

```bash
git --version
```

## Project SetupectSetup'></a>Project Setup

### Quick Start (Recommended)ended'></a>Quick Start (Recommended)

If you cloned the [dot-net-expense-tracker](https://github.com/kpassoubady/dot-net-expense-tracker) repo (per `install.md`), use the provided project:

```bash
# Navigate to the project directory
cd dot-net-expense-tracker

# Restore dependencies
dotnet restore

# Build the project
dotnet build

# Create database migrations
dotnet ef migrations add InitialCreate --project src/ExpenseTracker.Web
dotnet ef database update --project src/ExpenseTracker.Web

# Run the application
dotnet run --project src/ExpenseTracker.Web

# Open http://localhost:5000 or https://localhost:5001
```

### Create ASP.NET Core Project from Scratchtch'></a>Create ASP.NET Core Project from Scratch

Create the project directory and solution:

```bash
mkdir -p ~/copilot/personal-expense-tracker/dotnet-aspnetcore
cd ~/copilot/personal-expense-tracker/dotnet-aspnetcore

# Create solution and project
dotnet new sln -n ExpenseTracker
dotnet new webapp -n ExpenseTracker.Web -o src/ExpenseTracker.Web
dotnet sln add src/ExpenseTracker.Web

# Navigate to project
cd src/ExpenseTracker.Web
```

### Install NuGet Packagesackages'></a>Install NuGet Packages

```bash
# Entity Framework Core with SQLite
dotnet add package Microsoft.EntityFrameworkCore.Sqlite --version 9.0.0
dotnet add package Microsoft.EntityFrameworkCore.Design --version 9.0.0
dotnet add package Microsoft.EntityFrameworkCore.Tools --version 9.0.0

# Validation
dotnet add package FluentValidation.AspNetCore --version 11.3.0

# OpenAPI/Swagger
dotnet add package Swashbuckle.AspNetCore --version 6.5.0
```

Verify packages installed:

```bash
dotnet list package
```

### Test Project SetupctSetup'></a>Test Project Setup

Build and run the application:

```bash
# Build the project
dotnet build

# Run the application
dotnet run --project src/ExpenseTracker.Web

# Application should start on:
# - HTTP:  http://localhost:5000
# - HTTPS: https://localhost:5001
```

Test the health endpoint (after adding it):

```bash
curl http://localhost:5000/health
# Expected: {"status":"Healthy","timestamp":"..."}
```

Stop the application with `Ctrl+C`.

## IDE SetupIDESetup'></a>IDE Setup

### Visual Studio Code Extensionsnsions'></a>Visual Studio Code Extensions

Install recommended VS Code extensions:

```bash
# C# Dev Kit (includes C# extension and IntelliCode)
code --install-extension ms-dotnettools.csdevkit

# .NET Extension Pack
code --install-extension ms-dotnettools.vscode-dotnet-pack

# GitHub Copilot
code --install-extension github.copilot

# REST Client for API testing
code --install-extension humao.rest-client

# Thunder Client (alternative API testing)
code --install-extension rangav.vscode-thunder-client
```

Alternatively, install via VS Code marketplace:

1. **C# Dev Kit** - Comprehensive C# support
2. **GitHub Copilot** - AI-powered code completion
3. **REST Client** - API testing within VS Code
4. **NuGet Gallery** - Package management

### Visual Studio for Mac (Alternative)ive'></a>Visual Studio for Mac (Alternative)

If using Visual Studio for Mac:

1. Download from [Visual Studio for Mac](https://visualstudio.microsoft.com/vs/mac/)
2. Install with ASP.NET and web development workload
3. Install GitHub Copilot extension from Extensions Manager

## Database SetupaseSetup'></a>Database Setup

### SQLite Database (Default)fault'></a>SQLite Database (Default)

SQLite is configured by default. No additional setup required.

Update `appsettings.json`:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Data Source=expensetracker.db"
  },
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.AspNetCore": "Warning",
      "Microsoft.EntityFrameworkCore.Database.Command": "Information"
    }
  },
  "AllowedHosts": "*"
}
```

Add to `.gitignore`:

```gitignore
# Database files
*.db
*.db-shm
*.db-wal
```

### SQL Server (Optional)ional'></a>SQL Server (Optional)

For SQL Server (using Docker):

```bash
# Pull SQL Server image
docker pull mcr.microsoft.com/mssql/server:2022-latest

# Run SQL Server container
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=YourStrong@Password" \
  -p 1433:1433 --name sql-server -d mcr.microsoft.com/mssql/server:2022-latest
```

Update packages and connection string:

```bash
dotnet add package Microsoft.EntityFrameworkCore.SqlServer --version 9.0.0
```

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=localhost;Database=ExpenseTracker;User Id=sa;Password=YourStrong@Password;TrustServerCertificate=True"
  }
}
```

## Verificationification'></a>Verification

Run these commands to verify your setup:

```bash
# Check .NET SDK
dotnet --version && echo "✓ .NET SDK OK"

# Check EF Core tools
dotnet ef --version && echo "✓ EF Core Tools OK"

# Check Git
git --version && echo "✓ Git OK"

# Test project compilation
cd dot-net-expense-tracker
dotnet build && echo "✓ Build OK"

# Run application (Ctrl+C to stop)
dotnet run --project src/ExpenseTracker.Web
```

Expected access points after starting:

- **Application**: http://localhost:5000 or https://localhost:5001
- **Swagger UI**: https://localhost:5001/swagger
- **Health Check**: http://localhost:5000/health

## Troubleshootingeshooting'></a>Troubleshooting

### Common Issues and Solutions

**1. .NET SDK Not Found**

```bash
# Check installation
dotnet --list-sdks

# If missing, reinstall via Homebrew
brew reinstall --cask dotnet-sdk
```

**2. EF Core Tools Not Found**

```bash
# Ensure tools are in PATH
export PATH="$PATH:$HOME/.dotnet/tools"

# Reinstall tools
dotnet tool uninstall --global dotnet-ef
dotnet tool install --global dotnet-ef
```

**3. Port Already in Use**

```bash
# Find process using port 5000
lsof -ti:5000 | xargs kill -9

# Or change port in Properties/launchSettings.json
```

**4. NuGet Packages Not Restoring**

```bash
# Clear NuGet cache
dotnet nuget locals all --clear

# Restore packages
dotnet restore
```

**5. SSL Certificate Issues**

```bash
# Trust development certificate
dotnet dev-certs https --trust
```

**6. IDE Not Recognizing C#**

- Restart VS Code
- Run: `.NET: Restart Language Server` from Command Palette (Cmd+Shift+P)
- Verify C# Dev Kit extension is installed and enabled

### Technology Stack Summary

- **Framework**: ASP.NET Core 10.0
- **ORM**: Entity Framework Core 9.0
- **Database**: SQLite (development) / SQL Server (optional)
- **Frontend**: Razor Pages + Bootstrap 5.3
- **Validation**: FluentValidation
- **Testing**: xUnit, Moq, FluentAssertions
- **API Documentation**: Swagger/OpenAPI

### Next Steps

After completing setup:

1. Open the project in VS Code: `code dot-net-expense-tracker`
2. Verify GitHub Copilot is working
3. Start building the Personal Expense Tracker application!
