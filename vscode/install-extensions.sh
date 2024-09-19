#!/bin/bash

pkglist=(
  # Languages
  ms-ceintl.vscode-language-pack-cs
  # Themes
  harryhopkinson.vim-theme
  sainnhe.gruvbox-material
  # Keybindings
  vscodevim.vim
  # Git
  eamodio.gitlens
  # Latex
  james-yu.latex-workshop
  # JavaScript
  dbaeumer.vscode-eslint
  esbenp.prettier-vscode
  wallabyjs.quokka-vscode
  # React
  burkeholland.simple-react-snippets
  formulahendry.auto-rename-tag
  # Python
  ms-python.debugpy
  ms-python.python
  ms-python.vscode-pylance
  # Rust
  rust-lang.rust-analyzer
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
