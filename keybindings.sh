#!/bin/sh
TARGET="$(eval echo ~${SUDO_USER})/Library/KeyBindings"
if [ ! -d "$TARGET" ]; then
  mkdir $TARGET
fi
cp "/Users/christofferwinterkvist/Library/Mobile Documents/iCloud/Developer/Configuration/OSX-Configuration/Library/KeyBindings/DefaultKeyBinding.dict" $TARGET
