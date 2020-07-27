#!/bin/bash

# Create a directory to do work in.
mkdir -p ./fonts
cd ./fonts

# ------
# GOOGLE
# ------
# Install all standard Google fonts (including Roboto and Fira)
pikaur -Syu ttf-google-fonts-git

# ------------
# FONT AWESOME
# ------------
# Install the FontAwesome python library, which allows FA lookups in Python
pip3 install fontawesome


# ---------
# FIRA CODE
# ---------
# Install the Fira Code font, which includes FontAwesome.
pikaur -Syu nerd-fonts-fira-code

# --------------------
# NERD FONT ICON NAMES
# --------------------
# Download NerdFonts icon names scripts, which allow FA icon lookups in Bash

# Pull the files. Why did I use SVN again?
mkdir -p ~/.config/fonts
svn export https://github.com/ryanoasis/nerd-fonts/trunk/bin/scripts/lib nerd-fonts --force
/# Install.
cp ./nerd-fonts/*.sh ~/.config/fonts/
echo "source ~/.config/fonts/i_all.sh" >> ~/.bashrc


# --------
# CLEANUP
# -------

# Reset directory changes.
cd ..
# Reload the font cache.
sudo fc-cache -fv
