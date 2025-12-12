#!/bin/bash

# Install packages and apply all dotfiles and configurations.
# Configured for MacOS.

./set_macos.sh

# Install Homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew doctor

# Creak configuration links using stow
brew install stow

./stow_all.sh

# Nerd fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-mono-nerd-font
brew install --cask font-0xproto-nerd-font

# Starship
brew install starship

# Yazi
brew install yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide resvg imagemagick font-symbols-only-nerd-font
ya pkg insttall

# VSCode
brew install --cask visual-studio-code
./vscode/install.sh

# Bitwarden
brew install --cask bitwarden

brew install docker
brew install --cask arc
brew install --cask zen
brew install --cask zed

brew install neovim
brew install lftp

# MacOS specific
brew install --cask raycast
brew install --cask karabiner-elements
brew install --cask alt-tab
brew install --cask aldente
brew install --cask monitorcontrol
brew install --cask iterm2
brew install --cask alacritty
brew install --cask iina
