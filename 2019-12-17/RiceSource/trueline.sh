#!/bin/bash

git clone https://github.com/petobens/trueline ./trueline
# Pull the known good version.
cd trueline
git checkout master && git pull
cd ..
cp ./trueline/trueline.sh ~/.config/trueline/
cp ./trueline_config.sh ~/.config/trueline_config.sh