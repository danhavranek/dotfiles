#!/bin/bash

pkglist=(
ms-ceintl.vscode-language-pack-cs
harryhopkinson.vim-theme
vscodevim.vim
eamodio.gitlens
james-yu.latex-workshop
dbaeumer.vscode-eslint
esbenp.prettier-vscode
burkeholland.simple-react-snippets
formulahendry.auto-rename-tag
ms-python.debugpy
ms-python.python
ms-python.vscode-pylance
rust-lang.rust-analyzer
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
