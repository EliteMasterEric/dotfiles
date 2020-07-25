#!/bin/bash

echo "d888888b d8b   db .d8888. d888888b  .d8b.  db      db      d888888b d8b   db  d888b  "
echo "  '88'   888o  88 88'  YP '~~88~~' d8' '8b 88      88        '88'   888o  88 88' Y8b "
echo "   88    88V8o 88 '8bo.      88    88ooo88 88      88         88    88V8o 88 88      "
echo "   88    88 V8o88   'Y8b.    88    88~~~88 88      88         88    88 V8o88 88  ooo "
echo "  .88.   88  V888 db   8D    88    88   88 88booo. 88booo.   .88.   88  V888 88. ~8~ "
echo "Y888888P VP   V8P '8888Y'    YP    YP   YP Y88888P Y88888P Y888888P VP   V8P  Y888P  "

# ------------
# DEPENDENCIES
# ------------

# APT repositories
sudo add-apt-repository -y ppa:aguignard/ppa
sudo add-apt-repository -y ppa:mmstick76/alacritty
sudo apt-get update
sudo apt-get upgrade
sudo apt install autoconf automake build-essential compton cmake subversion virtualenv cmake-data git libcairo2-dev libev-dev libpango1.0-dev libstartup-notification0-dev libxcb-composite0-dev libxcb-cursor-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-keysyms1-dev libxcb-randr0-dev libxcb-shape0-dev libxcb-util0-dev libxcb-xinerama0-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-xrm0 libxcb1-dev libxkbcommon-dev libxkbcommon-x11-dev libyajl-dev pkg-config python-xcbgen python2.7 python3-pip python3-sphinx xcb-proto feh imagemagick python-fontforge mercurial
sudo pip3 install i3ipc fontawesome

# ------------
# APPLICATIONS
# ------------

# Install cursor theme
sudo apt install breeze-cursor-theme

# Install pywal
sudo pip3 install pywal

# Install i3-gaps from source
./i3-gaps.sh

# Install polybar from source
./polybar.sh

# Install fonts from GitHub
./fonts.sh

# Install trueline
./trueline.sh

# Install kitty (TEMPORARY, wait until Alacritty adds font fallbacks)
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# Install Alacritty
sudo apt install alacritty

# Install Visual Studio Code
sudo apt install code

# Restart, on login screen click gear.
# Select i3 as window manager

# Build wal config.
wal -i ~/.config/Catharsis.png