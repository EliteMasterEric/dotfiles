#!/bin/bash

echo "d888888b d8b   db .d8888. d888888b  .d8b.  db      db      d888888b d8b   db  d888b  "
echo "  '88'   888o  88 88'  YP '~~88~~' d8' '8b 88      88        '88'   888o  88 88' Y8b "
echo "   88    88V8o 88 '8bo.      88    88ooo88 88      88         88    88V8o 88 88      "
echo "   88    88 V8o88   'Y8b.    88    88~~~88 88      88         88    88 V8o88 88  ooo "
echo "  .88.   88  V888 db   8D    88    88   88 88booo. 88booo.   .88.   88  V888 88. ~8~ "
echo "Y888888P VP   V8P '8888Y'    YP    YP   YP Y88888P Y88888P Y888888P VP   V8P  Y888P  "

# Any errors must cause the script to fail.
set -e

if [[ $UID == 0 ]]; then
  echo ""
  echo "===ERROR==="
  echo "Do not run this script with 'sudo' directly."
  exit 1
fi

# You must be in the same directory as the script.
cd "$(dirname "$0")"

#-------------
# DEPENDENCIES
#-------------

# Basic required apps
sudo pacman -Syu --noconfirm nano git python python-pip ruby wget imagemagick unzip base-devel gnu-free-fonts xorg-server xorg-xinit pciutils nvidia compton feh

# pikaur - AUR helper.
# The Arch User Repository is a community-driven collection of PKGBUILD scripts.
# With an interface similar to pacman, you can download and build source code for projects.
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -si
cd ..

#-------------
# APPLICATIONS
#-------------

# zsh shell
sudo pacman -Syu --noconfirm zsh

# Window Manager: i3
sudo pacman -Syu --noconfirm i3-gaps

# Fonts
./install/fonts.sh

# Text Editor: Visual Studio Code
sudo pacman -Syu --noconfirm code

# Web Browser: Firefox
sudo pacman -Syu --noconfirm firefox

# Web Browser: Google Chrome
pikaur -Syu --noconfirm google-chrome

# Music: Spotify
pikaur -Syu --noconfirm spotify

# Chat: Discord
sudo pacman -Syu --noconfirm discord

# Console prompt: Trueline
pikaur -Syu --noconfirm trueline-git

# Wallpaper based themes: pywal
sudo pip3 install pywal

# OS data display: pfetch
pikaur -Syu --noconfirm neofetch

#--------------
# CONFIGURATION
#--------------

# .config folder
cp -r ./config/* $HOME/.config/

# bashrc file
cp ./bashrc ~/.bashrc

# Git configuration
cp ./gitconfig $HOME/.gitconfig

# XOrg configuration
cp ./xinitrc $HOME/.xinitrc

# ZSH configuration
chsh -s /bin/zsh
cp ./zshrc $HOME/.zshrc
