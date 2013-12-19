#!/bin/sh
echo "-> Dock"
echo "    Disable Dock launch animation"
defaults write com.apple.dock launchanim -bool no
echo "    Disable Dock magnification"
defaults write com.apple.dock magnification -bool no
echo "    Set Dock position to left"
defaults write com.apple.dock orientation -string bottom
echo "    Set Dock pinning position to top"
defaults write com.apple.dock pinning -string center
echo "    Set Dock autohide time to 0.1"
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.1
echo "    Set Dock minimize effect to scale (genie, scale, suck)"
defaults write com.apple.Dock mineffect -string genie
echo "    Set Dock tile size"
defaults write com.apple.dock tilesize -int 48
echo "    Set Magnification size"
defaults write com.apple.dock 'largesize' -int 64
echo "    Set Minimize window when titlebar is double clicked"
defaults write NSGlobalDomain AppleMiniaturizeOnDoubleClick -bool true
echo "    Set Minimize to application icon"
defaults write com.apple.dock minimize-to-application -bool true
echo "    Show indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool false

echo "-> Exposé"
echo "    Set Expose animation duration to 0.1"
defaults write com.apple.dock expose-animation-duration -float 0.1
echo "    Set Workspace edge delay to 0.1"
defaults write com.apple.dock workspaces-edge-delay -float 0.1
echo "    Switch to app space during activation"
defaults write NSGlobalDomain AppleSpacesSwitchOnActivate -bool true
echo "    Group windows by app in expose"
defaults write com.apple.dock expose-group-by-app -bool true

echo "-> Globals"
# Text smoothing font limit
defaults write -g 'AppleAntiAliasingThreshold' -int 4
# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.5
# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2
# smooth scrolling
defaults write NSGlobalDomain AppleScrollAnimationEnabled -bool true
# Menu bar: show remaining battery percentage; hide time
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.menuextra.battery ShowTime -string "NO"

echo "-> Keyboard"
echo "    Modifier Keys… > Apple Internal Keyboard / Trackpad > Caps Lock ( ⇪) Key: No Action"
defaults -currentHost write -g 'com.apple.keyboard.modifiermapping.1452-566-0' -array '<dict><key>HIDKeyboardModifierMappingDst</key><integer>-1</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'

echo "    Modifier Keys… > Apple Keyboard [External] > Caps Lock ( ⇪) Key: No Action"
defaults -currentHost write -g 'com.apple.keyboard.modifiermapping.1452-544-0' -array '<dict><key>HIDKeyboardModifierMappingDst</key><integer>-1</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'

echo "-> Misc"
echo "    Remove remove symbolic hotkeys"
echo "    (Example: ctrl+cmd+d (Dictionary)"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 70 '<dict><key>enabled</key><false/></dict>'
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 35 '<dict><key>enabled</key><false/></dict>'
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 36 '<dict><key>enabled</key><false/></dict>'
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 37 '<dict><key>enabled</key><false/></dict>'

echo "    Enable iTunes track notifications in the Dock"
defaults write com.apple.dock itunes-notifications -bool true
echo "    Enable spring loading for all Dock items"
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

defaults write com.panic.Coda2 NSQuitAlwaysKeepsWindows -bool true
echo "    Set Screenshot location to ~/Pictures/Screenshots"
defaults write com.apple.screencapture location ~/Pictures/Screenshots

echo "-> Accessibility"
# Zoom: Options… > Smooth images (Press ⌥ ⌘\ to turn smoothing on or off): off
defaults write com.apple.universalaccess 'closeViewSmoothImages' -bool false

# Zoom: Options… > Use scroll wheel with modifier keys to zoom: on
defaults write com.apple.universalaccess 'closeViewScrollWheelToggle' -bool true
# Zoom: Options… > Use scroll wheel with modifier keys to zoom: ^ [control]
defaults write com.apple.universalaccess 'HIDScrollZoomModifierMask' -int 262144

echo "-> Safari"
echo "    Enable Safari’s debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

echo "    RESTART DOCK"
killall -9 Dock