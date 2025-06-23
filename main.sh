#!/bin/sh

git clone git@github.com:Mjturn/dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/hypr ~/.config/hypr
ln -s ~/.dotfiles/kitty ~/.config/kitty
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/wofi ~/.config/wofi
mv ~/.dotfiles/Wallpapers ~

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

sudo pacman -Syu --noconfirm fish
chsh -s /bin/fish

sudo pacman -Syu --noconfirm dash
sudo ln -sfT dash /usr/bin/sh
yay -Syu --noconfirm dashbinsh

sudo pacman -Syu --noconfirm neovim
yay -Syu --noconfirm brave-bin
sudo pacman -Syu --noconfirm steam
sudo pacman -Syu --noconfirm man
sudo pacman -Syu --noconfirm unzip
sudo pacman -Syu --noconfirm wl-clipboard
sudo pacman -Syu --noconfirm ttf-fira-code ttf-jetbrains-mono

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
