#!/bin/bash

# Download i3-gaps
git clone https://www.github.com/Airblader/i3 i3-gaps

# Pull the latest.
cd i3-gaps
git checkout gaps-next && git pull

# Build and install.
autoreconf --force --install
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install

# Reset directory changes.
cd ../..

# Download additional i3 scripts
git clone https://github.com/justbuchanan/i3scripts i3scripts
# Pull the latest.
cd i3scripts
git checkout master && git pull

mkdir ~/.config/i3/scripts/
cp ./autoname_workspaces.py ~/.config/i3/scripts/
cp ./util.py ~/.config/i3/scripts/