#!/bin/sh
#CURRENT_FOLDER=$(pwd)
CURRENT_FOLDER="$HOME/Library/Mobile Documents/iCloud/Developer/Configuration/OSX-Configuration"
#echo "Changing locations for screenshots to ~/Pictures/Screenshots"
#/bin/sh "$CURRENT_FOLDER/screenshots.sh"
echo "Setting up key bindings"
/bin/sh "$CURRENT_FOLDER/keybindings.sh"
#echo "Setting up user defaults"
#/bin/sh "$CURRENT_FOLDER/osx_bootstrap.sh"
