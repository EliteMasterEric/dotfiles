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
cd "$(dirname "$0")"


rm -rf ./fonts

rm -rf ./pikaur
