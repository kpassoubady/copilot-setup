# General Setup: macOS

This guide walks through the general development environment setup on macOS for this GitHub Copilot course, focusing on Git, Visual Studio Code (VSC), and GitHub Copilot. If you prefer to use IntelliJ IDEA, instructions are also provided.


## 1. Install Homebrew (if not already installed)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Verify:

```bash
brew --version
```


## 2. Install Git

```bash
brew install git
```

Verify:

```bash
git --version
```

Configure (use your name and email):

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```


## 3. Install Visual Studio Code (Recommended)

Download from <https://code.visualstudio.com/download> or install via Homebrew:

```bash
brew install --cask visual-studio-code
```

Verify the CLI is available:

```bash
code --version
```


## 4. Install IntelliJ IDEA (Alternative)

If you prefer using JetBrains IDEs:
Download IntelliJ IDEA (Community or Ultimate) from <https://www.jetbrains.com/idea/download/> and install it.


## 5. GitHub Copilot Setup

### Option A: Visual Studio Code

Install the GitHub Copilot extensions from the Extensions panel (`Cmd+Shift+X`) or via CLI:

```bash
code --install-extension GitHub.copilot
code --install-extension GitHub.copilot-chat
```

- Sign in with your GitHub account that has an active Copilot license.
- Verify: open VS Code, type a comment in a file. Copilot should suggest completions.

### Option B: IntelliJ IDEA

1. Open IntelliJ IDEA.
2. Go to **IntelliJ IDEA > Settings** (`Cmd + ,`).
3. Select **Plugins** from the left menu.
4. Click on the **Marketplace** tab and search for **GitHub Copilot**.
5. Click **Install** and restart the IDE if prompted.
6. Click the GitHub Copilot icon in the status bar or tool window to sign in to your GitHub account.


> **Next Steps:** Once your general environment is set up, proceed to the track-specific installation guide for your chosen project language (Java, Python, .NET, etc.) from the main installation page.
