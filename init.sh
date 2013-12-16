#!/bin/sh
CURRENT_FOLDER=$(pwd)
echo "Setting up key bindings"
/bin/sh "$CURRENT_FOLDER/keybindings.sh"
echo "Setting up user defaults"
/bin/sh "$CURRENT_FOLDER/userdefaults.sh"
echo "========================"
echo "Don't forget to log out and log in for the keyboard bindings to stick"