#!/bin/sh
TARGET="$(eval echo ~${SUDO_USER})/Library/KeyBindings"
if [ ! -d "$TARGET" ]; then
  mkdir $TARGET
fi
cp "$HOME/Library/Mobile Documents/iCloud/Developer/Configuration/OSX-Configuration/Library/KeyBindings/DefaultKeyBinding.dict" $TARGET
