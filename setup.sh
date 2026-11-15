#!/bin/bash
# Review and run the commands you need.

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Bun
curl -fsSL https://bun.sh/install | bash

# Rust / Cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

# fnm
brew install fnm
fnm install --lts
fnm use --lts
fnm default "$(fnm current)"

# Homebrew packages
brew tap mihasic/term-toggle
# brew tap umputun/apps

# brew install awscli
# brew install azure-cli
brew install bat
brew install duti
brew install ffmpeg
brew install fzf
brew install gh
# brew install go
brew install lazygit
# brew install midnight-commander
brew install neovim
# brew install ollama
brew install pnpm
brew install ripgrep
brew install sevenzip
brew install starship
brew install tmux
brew install uv
brew install wget
brew install yazi
brew install zoxide
brew install git-lfs # Required by the Git LFS filters in .gitconfig.

# brew install --cask codex
brew install --cask font-caskaydia-cove-nerd-font
brew install --cask font-jetbrains-mono
brew install --cask ghostty
# brew install --cask google-chrome
# brew install --cask iterm2
# brew install --cask kitty
# brew install --cask rancher
brew install --cask vlc
brew install --cask mihasic/term-toggle/term-toggle
# brew install --cask umputun/apps/agterm
