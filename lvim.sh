#!/bin/bash
# Install lunarvim and dependencies

cd ~/Downloads
echo "Installing latest neovim release"
curl -LO https://github.com/neovim/neovim/nightly/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

echo "Installing Lunarvim"
bash <(curl -s https://raw.githubusercontent.com/ChristianChiarulli/lunarvim/master/utils/installer/install.sh)

echo "Retrieving my dotfiles"
mkdir ~/source -p
cd ~/source
wget https://github.com/Cheffromspace/lvim

cd ~/.config/lvim


