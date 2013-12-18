#!/bin/sh
echo "=============DOCK============="
echo "Disable Dock launch animation"
defaults write com.apple.dock launchanim -bool no
echo "Disable Dock magnification"
defaults write com.apple.dock magnification -bool no
echo "Set Dock position to left"
defaults write com.apple.dock orientation -string left
echo "Set Dock pinning position to top"
defaults write com.apple.dock pinning -string start
echo "Set Dock autohide time to 0.1"
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.1
echo "Set Dock minimize effect to suck"
defaults write com.apple.Dock mineffect -string suck
echo "Set Dock tile size"
defaults write com.apple.dock tilesize -int 32

echo "============EXPOSE============"
echo "Set Expose animation duration to 0.1"
defaults write com.apple.dock expose-animation-duration -float 0.1
echo "Set Workspace edge delay to 0.1"
defaults write com.apple.dock workspaces-edge-delay -float 0.1


echo "=============MISC============="
echo "Remove keyboard shortcut for ctrl+cmd+d (Dictionary)"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 70 '<dict><key>enabled</key><false/></dict>'
defaults write com.panic.Coda2 NSQuitAlwaysKeepsWindows -bool true
echo "Set Screenshot location to ~/Pictures/Screenshots"
defaults write com.apple.screencapture location ~/Pictures/Screenshots

echo "=========RESTART DOCK========="
killall -9 Dock