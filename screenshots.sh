#!/bin/sh
TARGET="$(eval echo ~${SUDO_USER})/Pictures/Screenshots"
if [ ! -d "$TARGET" ]; then
  mkdir $TARGET
fi