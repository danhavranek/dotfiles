#!/bin/bash

pkglist=(
harryhopkinson.vim-theme
vscodevim.vim
dbaeumer.vscode-eslint
esbenp.prettier-vscode
burkeholland.simple-react-snippets
eamodio.gitlens
formulahendry.auto-rename-tag
ms-ceintl.vscode-language-pack-cs
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done