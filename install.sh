#!/bin/bash

# Install packages and apply all dotfiles and configurations.
# Configured for MacOS.

# Install Homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew doctor

# Creak configuration links using stow
brew install stow

stow zsh
stow git
stow yazi
stow nvim
stow zed
stow karabiner

./vscode/install.sh
