#!/bin/sh
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.1
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 70 '<dict><key>enabled</key><false/></dict>'
defaults write com.panic.Coda2 NSQuitAlwaysKeepsWindows -bool true

defaults write com.apple.screencapture location ~/Pictures/Screenshots

killall -9 Dock