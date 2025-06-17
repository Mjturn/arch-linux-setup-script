#!/bin/bash

sudo pacman -Syu git

git clone git@github.com:Mjturn/dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/nvim ~/.config/nvim

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

sudo pacman -Syu fish
chsh -s /bin/fish

sudo pacman -Syu neovim
yay -Syu brave-bin
sudo pacman -Syu steam
sudo pacman -Syu unzip

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
