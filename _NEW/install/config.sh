#!/bin/bash

# Any errors must cause the script to fail.
set -e

if [[ $UID == 0 ]]; then
  echo ""
  echo "===ERROR==="
  echo "Do not run this script with 'sudo' directly."
  exit 1
fi

# You must be in the same directory as the script.
echo "$(dirname "$0")"
cd "$(dirname "$0")"

#--------------
# CONFIGURATION
#--------------

# Move to the base directory.
cd ..

# Copy the .config folder
cp -r ./config/* $HOME/.config/

# Copy the Git configuration
cp ./gitconfig $HOME/.gitconfig

# Copy the XOrg init configuration
cp ./xinitrc $HOME/.xinitrc

