# Neovim Setup - Dragon’s Den

![705shots_so](https://github.com/user-attachments/assets/0c50478e-ec00-45da-bff8-c53c148df779)

## Installation

### Windows

To install LazyVim on Windows, follow these steps:

1. **Set up Chocolatey**: Chocolatey is a package manager for Windows that simplifies the installation, updating, and management of software. We use Chocolatey to quickly and easily install the tools needed for LazyVim.

   - Open PowerShell as an administrator.
   - Run the following command:
     ```powershell
     Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
     ```

2. **Install the necessary tools with Chocolatey**:
   - Run the following commands:
     ```powershell
     choco install neovim
     choco install ripgrep
     choco install fd
     choco install lazygit
     ```

3. **Prepare the Neovim environment**:
   - Move the necessary folders:
     ```powershell
     Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
     Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
     ```

4. **Clone this repository**:
   - Run the following command:
     ```powershell
     git clone https://github.com/vicenteroa/neovim-setup $env:LOCALAPPDATA\nvim
     ```

5. **Start my setup**:
   - Open Neovim with:
     ```powershell
     nvim
     ```

### Linux

To install LazyVim on Linux, follow these steps:

1. **Install the necessary tools**:
   - Run the following commands:
     ```bash
     sudo apt update
     sudo apt install neovim
     sudo apt install ripgrep
     sudo apt install fd-find
     sudo apt install lazygit
     ```

2. **Prepare the Neovim environment**:
   - Move the necessary folders:
     ```bash
     mv ~/.config/nvim ~/.config/nvim.bak
     mv ~/.local/share/nvim ~/.local/share/nvim.bak
     mv ~/.local/state/nvim ~/.local/state/nvim.bak
     mv ~/.cache/nvim ~/.cache/nvim.bak
     ```

3. **Clone this repository**:
   - Run the following command:
     ```bash
     git clone https://github.com/vicenteroa/neovim-setup ~/.config/nvim
     ```

4. **Start my setup**:
   - Open Neovim with:
     ```bash
     nvim
     ```

## Zellij Setup

### Installation

### Windows

1. **Download and Install Zellij**:
   - Open PowerShell as an administrator.
   - Run the following command to download and install Zellij using `winget` (Windows Package Manager):
     ```powershell
     winget install zellij
     ```

2. **Verify Installation**:
   - After installation, you can check if Zellij is installed correctly by running:
     ```powershell
     zellij --version
     ```

### Linux

1. **Download and Install Zellij**:
   - Open a terminal.
   - Run the following commands to download and install Zellij:
     ```bash
     sudo apt update
     sudo apt install zellij
     -- or brew
     brew install zellij
     ```

2. **Verify Installation**:
   - After installation, you can check if Zellij is installed correctly by running:
     ```bash
     zellij --version
     ```

## Configuration

1. **Create Configuration File**:
   - Create or edit the configuration file for Zellij. By default, this file should be located at `~/.config/zellij/config.kdl`.

2. **Add Configuration**:
   - Add the following configuration to your `config.kdl` file:

```kdl
# Zellij Configuration

default_shell "bash"
shared_except "locked" {
    bind "Alt f" { 
        LaunchPlugin "filepicker" {
            floating true
            close_on_selection true
        } 
    }
    bind "Alt y" {
        LaunchOrFocusPlugin "file:~/.config/zellij/plugins/zellij_forgot.wasm" {
            "lock"                  "ctrl + g"
            "unlock"                "ctrl + g"
            "new pane"              "ctrl + p + n"
            "change focus of pane"  "ctrl + p + arrow key"
            "close pane"            "ctrl + p + x"
            "rename pane"           "ctrl + p + c"
            "toggle fullscreen"     "ctrl + p + f"
            "toggle floating pane"  "ctrl + p + w"
            "toggle embed pane"     "ctrl + p + e"
            "choose right pane"     "ctrl + p + l"
            "choose left pane"      "ctrl + p + r"
            "choose upper pane"     "ctrl + p + k"
            "choose lower pane"     "ctrl + p + j"
            "new tab"               "ctrl + t + n"
            "close tab"             "ctrl + t + x"
            "change focus of tab"   "ctrl + t + arrow key"
            "rename tab"            "ctrl + t + r"
            "sync tab"              "ctrl + t + s"
            "brake pane to new tab" "ctrl + t + b"
            "brake pane left"       "ctrl + t + ["
            "brake pane right"      "ctrl + t + ]"
            "toggle tab"            "ctrl + t + tab"
            "increase pane size"    "ctrl + n + +"
            "decrease pane size"    "ctrl + n + -"
            "increase pane top"     "ctrl + n + k"
            "increase pane right"   "ctrl + n + l"
            "increase pane bottom"  "ctrl + n + j"
            "increase pane left"    "ctrl + n + h"
            "decrease pane top"     "ctrl + n + K"
            "decrease pane right"   "ctrl + n + L"
            "decrease pane bottom"  "ctrl + n + J"
            "decrease pane left"    "ctrl + n + H"
            "move pane to top"      "ctrl + h + k"
            "move pane to right"    "ctrl + h + l"
            "move pane to bottom"   "ctrl + h + j"
            "move pane to left"     "ctrl + h + h"
            "search"                "ctrl + s + s"
            "go into edit mode"     "ctrl + s + e"
            "detach session"        "ctrl + o + w"
            "open session manager"  "ctrl + o + w"
            "quit zellij"           "ctrl + q"
            floating true
        }
    }
    bind "Alt g" { SwitchToMode "Locked"; }
    bind "Alt q" { Quit; }
    bind "Alt n" { NewPane; }
    bind "Alt h" "Alt Left" { MoveFocusOrTab "Left"; }
    bind "Alt l" "Alt Right" { MoveFocusOrTab "Right"; }
    bind "Alt j" "Alt Down" { MoveFocus "Down"; }
    bind "Alt k" "Alt Up" { MoveFocus "Up"; }
    bind "Alt =" "Alt +" { Resize "Increase"; }
    bind "Alt -" { Resize "Decrease"; }
    bind "Alt [" { PreviousSwapLayout; }
    bind "Alt ]" { NextSwapLayout; }
}

shared_except "normal" "locked" {
    bind "Enter" "Esc" { SwitchToMode "Normal"; }
}

shared_except "pane" "locked" {
    bind "Alt p" { SwitchToMode "Pane"; }
}

shared_except "resize" "locked" {
    bind "Alt n" { SwitchToMode "Resize"; }
}

shared_except "scroll" "locked" {
    bind "Alt s" { SwitchToMode "Scroll"; }
}

shared_except "session" "locked" {
    bind "Alt o" { SwitchToMode "Session"; }
}

shared_except "tab" "locked" {
    bind "Alt t" { SwitchToMode "Tab"; }
}

shared_except "move" "locked" {
    bind "Alt m" { SwitchToMode "Move"; }
}

shared_except "tmux" "locked" {
    bind "Ctrl a" { SwitchToMode "Tmux"; }
}

on_force_close "quit"
simplified_ui true
default_shell "fish"
pane_frames true
```

## WezTerm Setup

## Installation

### Windows

1. **Download and Install WezTerm**:
   - Open PowerShell as an administrator.
   - Run the following command to download and install WezTerm using `winget` (Windows Package Manager):
     ```powershell
     winget install wezterm
     ```

2. **Verify Installation**:
   - After installation, you can check if WezTerm is installed correctly by running:
     ```powershell
     wezterm --version
     ```

### Linux

1. **Download and Install WezTerm**:
   - Open a terminal.
   - Run the following commands to download and install WezTerm:
     ```bash
     wget https://github.com/wez/wezterm/releases/download/20230525/wezterm-20230525-ubuntu20.04.deb
     sudo dpkg -i wezterm-20230525-ubuntu20.04.deb
     ```

2. **Verify Installation**:
   - After installation, you can check if WezTerm is installed correctly by running:
     ```bash
     wezterm --version
     ```

## Configuration

### Create Configuration File

1. **Locate or Create Configuration Directory**:
   - By default, WezTerm looks for its configuration file in the directory `~/.config/wezterm/`. If this directory does not exist, create it:
     ```bash
     mkdir -p ~/.config/wezterm
     ```

2. **Create or Edit the Configuration File**:
   - Create or edit the file named `wezterm.lua` within the `~/.config/wezterm/` directory:
     ```bash
     nano ~/.config/wezterm/wezterm.lua
     ```

### Configuration Content

- Add the following content to `wezterm.lua`:

```lua
local wezterm = require 'wezterm'

return {
  default_prog = { "wsl.exe" },
  font = wezterm.font_with_fallback({
    "Fira Code",              -- Primary font
    "Cascadia Code",         -- Backup font
    "JetBrains Mono",        -- Another backup font
  }),
  font_size = 12,           -- Font size
  color_scheme = "Dracula", -- Color scheme
  enable_tab_bar = false,   -- Disable tab bar
  use_fancy_tab_bar = false, -- Disable fancy tab bar
  hide_tab_bar_if_only_one_tab = true, -- Hide tab bar if only one tab
  -- Additional configuration options can be added here
  window_background_opacity = 0.9,
}
```
### Explanation

* **`default_prog`**: Specifies the default program to run when starting WezTerm (e.g., WSL).
* **`font`**: Defines the fonts to use, with fallbacks in case the primary font is unavailable.
* **`font_size`**: Sets the size of the font.
* **`color_scheme`**: Chooses the color scheme for the terminal.
* **`enable_tab_bar`**: Disables the tab bar.
* **`use_fancy_tab_bar`**: Disables the fancy tab bar.
* **`hide_tab_bar_if_only_one_tab`**: Hides the tab bar if there is only one tab.
* **`window_background_opacity`**: Adjusts the opacity of the window background.


I hope you enjoy it
