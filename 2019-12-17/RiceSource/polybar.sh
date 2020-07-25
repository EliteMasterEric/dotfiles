#!/bin/bash

# Download polybar
git clone https://www.github.com/polybar/polybar polybar

# Pull the latest.
cd polybar
git checkout master && git pull

# Build and install.
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install

# Reset directory changes.
cd ../..