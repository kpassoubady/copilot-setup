# General Setup: Windows

This guide installs the shared tools required for the GitHub Copilot course: Git, a supported IDE, and GitHub Copilot on Windows 10 or 11.

## 1. Install and Configure Git

Download Git from <https://git-scm.com/download/win> and install it with the default options.

Open a new Command Prompt or PowerShell window and verify:

```cmd
git --version
```

Check whether your Git identity is already configured:

```cmd
git config --global --get user.name
git config --global --get user.email
```

If either value is missing or incorrect, configure it using your own name and email:

```cmd
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

## 2. Install Visual Studio Code

Visual Studio Code is recommended for all tracks. Download it from <https://code.visualstudio.com/download> and install it.

During installation:

- Select **Add to PATH**.
- Select **Register Code as an editor for supported file types**.

Open a new Command Prompt or PowerShell window and verify:

```cmd
code --version
```

## 3. Set Up GitHub Copilot in Visual Studio Code

1. Open the latest version of VS Code.
2. Select the Copilot icon in the status bar.
3. Select **Use AI Features**.
4. Sign in with the GitHub account that has Copilot access. Copilot Free, an individual plan, or organization-provided access can be used.
5. Follow any authorization prompts. VS Code installs the required Copilot extensions automatically.

If automatic setup does not work, install the extensions from the Extensions view (`Ctrl+Shift+X`) or run:

```cmd
code --install-extension GitHub.copilot
code --install-extension GitHub.copilot-chat
```

### Verify Copilot

1. Open or create a source-code file and type a descriptive comment. Confirm that Copilot offers an inline suggestion.
2. Open the Chat view, enter `Explain what a REST API is in two sentences`, and confirm that Copilot responds without an authentication or policy error.

## 4. IntelliJ IDEA Alternative

Java learners may use IntelliJ IDEA instead of VS Code:

1. Download IntelliJ IDEA Community or Ultimate from <https://www.jetbrains.com/idea/download/>.
2. Open **File > Settings** (`Ctrl+Alt+S`).
3. Select **Plugins**, open **Marketplace**, and search for **GitHub Copilot**.
4. Install the plugin and restart IntelliJ IDEA if prompted.
5. Open **Tools > GitHub Copilot > Login to GitHub** and complete authentication.
6. Verify both an inline suggestion and a Chat response.

.NET learners who prefer Visual Studio may use a current Visual Studio 2022 release with the ASP.NET and web development workload. Copilot is included as a built-in component in Visual Studio 2022 version 17.10 and later.

## Next Step

Choose one course track and follow its OS-specific instructions from the [main installation page](./install.md).
