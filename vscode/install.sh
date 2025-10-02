#!/bin/bash

# This script was inspired by https://github.com/CoreyMSchafer/dotfiles.git

# Install VS Code extensions
./install-extensions.sh

# Target directory for VS Code user settings on macOS
VSCODE_USER_SETTINGS_DIR="${HOME}/Library/Application Support/Code/User"

# Check if VS Code settings directory exists
if [ -d "$VSCODE_USER_SETTINGS_DIR" ]; then
  # Backup existing settings.json and keybindings.json, if they exist
  mv "${VSCODE_USER_SETTINGS_DIR}/settings.json" "${VSCODE_USER_SETTINGS_DIR}/settings.json.backup"
  mv "${VSCODE_USER_SETTINGS_DIR}/keybindings.json" "${VSCODE_USER_SETTINGS_DIR}/keybindings.json.backup"

  # Create symlinks for settings.json and keybindings.json
  stow --target="${VSCODE_USER_SETTINGS_DIR}" settings

  echo "VS Code settings and keybindings have been updated."
else
  echo "VS Code user settings directory does not exist. Please ensure VS Code is installed."
fi
