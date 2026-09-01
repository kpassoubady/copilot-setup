# General Setup: macOS

This guide installs the shared tools required for the GitHub Copilot course: Homebrew, Git, a supported IDE, and GitHub Copilot.

## 1. Install Homebrew

If Homebrew is not already installed, run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow the shell configuration instructions printed by the installer. On Apple Silicon Macs, the commands normally include:

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Open a new Terminal window, then verify:

```bash
brew --version
```

## 2. Install and Configure Git

```bash
brew install git
git --version
```

Check whether your Git identity is already configured:

```bash
git config --global --get user.name
git config --global --get user.email
```

If either value is missing or incorrect, configure it using your own name and email:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

## 3. Install Visual Studio Code

Visual Studio Code is recommended for all tracks. Download it from <https://code.visualstudio.com/download> or install it with Homebrew:

```bash
brew install --cask visual-studio-code
```

Verify the command-line interface:

```bash
code --version
```

If you installed VS Code by downloading the application and `code` is not found, open the Command Palette in VS Code and run **Shell Command: Install 'code' command in PATH**. Restart Terminal and retry the verification command.

## 4. Set Up GitHub Copilot in Visual Studio Code

1. Open the latest version of VS Code.
2. Select the Copilot icon in the status bar.
3. Select **Use AI Features**.
4. Sign in with the GitHub account that has Copilot access. Copilot Free, an individual plan, or organization-provided access can be used.
5. Follow any authorization prompts. VS Code installs the required Copilot extensions automatically.

If automatic setup does not work, install the extensions from the Extensions view (`Cmd+Shift+X`) or run:

```bash
code --install-extension GitHub.copilot
code --install-extension GitHub.copilot-chat
```

### Verify Copilot

1. Open or create a source-code file and type a descriptive comment. Confirm that Copilot offers an inline suggestion.
2. Open the Chat view, enter `Explain what a REST API is in two sentences`, and confirm that Copilot responds without an authentication or policy error.

## 5. IntelliJ IDEA Alternative

Java learners may use IntelliJ IDEA instead of VS Code:

1. Download IntelliJ IDEA Community or Ultimate from <https://www.jetbrains.com/idea/download/>.
2. Open **IntelliJ IDEA > Settings** (`Cmd+,`).
3. Select **Plugins**, open **Marketplace**, and search for **GitHub Copilot**.
4. Install the plugin and restart IntelliJ IDEA if prompted.
5. Open **Tools > GitHub Copilot > Login to GitHub** and complete authentication.
6. Verify both an inline suggestion and a Chat response.

## Next Step

Choose one course track and follow its OS-specific instructions from the [main installation page](./install.md).
