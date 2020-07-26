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

# Basic required apps
pacman -Syu --noconfirm nano git python ruby
# Window manager dependencies
pacman -Syu --noconfirm xorg-server xorg-xinit pciutils nvidia

# TODO: Modify /etc/X11/xinit/xinitrc

# ------------
# APPLICATIONS
# ------------

# Window Manager: i3
pacman -Syu --noconfirm i3-gaps
# Call startx to run.

# Text Editor: Visual Studio Code
pacman -Syu --noconfirm code
