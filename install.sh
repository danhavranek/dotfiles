#!/bin/bash

# Apply all dotfiles and configurations.
# Configured for MacOS.

stow zsh
stow git
stow yazi
stow zed
stow karabiner

./vscode/install.sh
