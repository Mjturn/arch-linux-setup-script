#!/bin/sh

cd

sudo pacman -Syu --noconfirm waybar hyprpaper

git clone git@github.com:Mjturn/dotfiles.git ~/.dotfiles

rm -r ~/.config/hypr
rm -r ~/.config/kitty

ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/hypr ~/.config/hypr
ln -s ~/.dotfiles/kitty ~/.config/kitty
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/waybar ~/.config/waybar
ln -s ~/.dotfiles/wofi ~/.config/wofi
mv ~/.dotfiles/Wallpapers ~

sudo pacman -Syu --noconfirm pass
git clone git@github.com:Mjturn/password-manager.git ~/.password-store

sudo pacman -Syu --noconfirm zsh
chsh -s /usr/bin/zsh
sudo pacman -Syu --noconfirm zsh-syntax-highlighting zsh-autosuggestions

sudo pacman -Syu --noconfirm dash
sudo ln -sfT dash /usr/bin/sh
yay -Syu --noconfirm dashbinsh

sudo pacman -Syu --noconfirm bluez bluez-utils
systemctl enable bluetooth.service

sudo pacman -Syu --noconfirm nodejs npm
sudo npm install -g typescript
sudo pacman -Syu --noconfirm jdk-openjdk
sudo pacman -Syu --noconfirm steam
yay -Syu --noconfirm minecraft-launcher
sudo pacman -Syu --noconfirm fastfetch
sudo pacman -Syu --noconfirm man
sudo pacman -Syu --noconfirm wl-clipboard
sudo pacman -Syu --noconfirm ttf-fira-code ttf-jetbrains-mono otf-font-awesome

reboot
