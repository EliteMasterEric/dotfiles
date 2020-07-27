#!/bin/bash

mkdir ./fonts
cd ./fonts

# Google standard fonts (including Fira)
git clone https://www.github.com/google/fonts google-fonts
# Pull the known good version.
cd google-fonts
git checkout master && git pull
cd ..
# Move to the appropriate location.
sudo mkdir /usr/local/share/fonts/google-fonts/
sudo cp -r ./google-fonts/ofl/ /usr/local/share/fonts/google-fonts/

# Download Fira Code from NerdFonts (which merges in FontAwesome)
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/FiraCode.zip
# Extract to the appropriate location.
sudo mkdir /usr/local/share/fonts/nerd-fonts/
sudo unzip -o ./FiraCode.zip -d /usr/local/share/fonts/nerd-fonts/

# Download NerdFonts icon names scripts.
mkdir ~/.config/fonts
svn export https://github.com/ryanoasis/nerd-fonts/trunk/bin/scripts/lib nerd-fonts --force
# Install.
cp ./nerd-fonts/*.sh ~/.config/fonts/
echo "source ~/.config/fonts/i_all.sh" >> ~/.bashrc

# Reset directory changes.
cd ..
# Reload the font cache.
sudo fc-cache -fv
