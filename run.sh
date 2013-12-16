#!/bin/sh
TARGET="$(eval echo ~${SUDO_USER})/Library/KeyBindings"
if [ ! -d "$TARGET" ]; then
  mkdir $TARGET
fi
cp Library/KeyBindings/DefaultKeyBinding.dict $TARGET
