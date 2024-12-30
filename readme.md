# Terminal Configuration Setup

Explains how to set up the terminal environment.

## Required Tools

Install the following tools using Homebrew:

```bash
# Install essential tools
brew install starship            
brew install autojump           
brew install zsh-autosuggestions 
brew install lazygit            
brew install lazydocker         
brew install --cask wezterm     

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
# Ghostty config symlink - needs ghostty folder
ln -s ~/.config/term-config/ghostty/config ~/.config/ghostty/config
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
