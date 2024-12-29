# Terminal Configuration Setup

This guide explains how to set up your terminal environment using these dotfiles.

## Required Tools

Install the following tools using Homebrew:

```bash
# Install essential tools
brew install starship            # Modern prompt
brew install autojump           # Quick directory navigation
brew install zsh-autosuggestions # Fish-like autosuggestions
brew install lazygit            # Terminal UI for git
brew install lazydocker         # Terminal UI for docker
brew install --cask wezterm     # Modern terminal emulator

# Install fonts
brew tap homebrew/cask-fonts
brew install --cask font-hack 
```

## Configuration Setup

Clone repo into .config/term-config to get directory Structure
```
~/.config/term-config/
├── zsh/
│   └── .zshrc          # ZSH configuration
├── starship/
│   └── starship.toml   # Starship prompt configuration
└── wezterm/
    └── wezterm.lua     # WezTerm terminal configuration
```

Set up ZSH configuration:
```bash
# Create ZDOTDIR environment variable
echo 'export ZDOTDIR="$HOME/.config/term-config/zsh"' > ~/.zshenv
```

Create symlinks:
```bash
# WezTerm config symlink
ln -s ~/.config/term-config/wezterm/wezterm.lua ~/.wezterm.lua
```

## Tool-specific Setup

### Node Version Manager (nvm)
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
```

## Customization

- Modify `~/.config/term-config/starship/starship.toml` to customize your prompt
- Edit `~/.config/term-config/wezterm/wezterm.lua` to customize your terminal
- Add new aliases or functions to `~/.config/term-config/zsh/.zshrc`
