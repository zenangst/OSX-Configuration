# Sources
#   http://secrets.blacktree.com
#   http://mths.be/osx
#   http://github.com/ptb/Mac-OS-X-Lion-Setup
#   ~/Library/Prefereces/*

# TODO
#  Keyboard Shortcuts

echo "Configuring System..."

###############################################################################
# General 
###############################################################################
echo "  -> General"

### Pref Pane ###

# Appearance: Graphite
defaults write -g 'AppleAquaColorVariant' -int 1

# Highlight color: #CC99CC
defaults write -g 'AppleHighlightColor' -string '0.803865 0.877834 0.999508'

# Sidebar icon size: medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Always show scroll bars
defaults write NSGlobalDomain AppleShowScrollBars -string "Automatic"

# Close windows when quitting an application
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool true

# FIXME Modify the number of items in the Open Recent menu
defaults write -g 'NSRecentDocumentsLimit' -int 0

# Text smoothing font limit
defaults write -g 'AppleAntiAliasingThreshold' -int 4


### Hidden ###

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Document autosave
# defaults write -g ApplePersistence -bool false

# <http://hints.macworld.com/article.php?story=20040423170608616>
# defaults write com.apple.dock 'pinning' -string 'start'

# <http://mattdanger.net/2008/12/common-mac-os-x-tweaks/>
defaults write com.apple.print.PrintingPrefs 'Quit When Finished' -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, and `true` with `false`.
defaults write NSGlobalDomain AppleLanguages -array "en" "se" "nb"
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=USD"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Disable automatic termination of inactive apps
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# smooth scrolling
defaults write NSGlobalDomain AppleScrollAnimationEnabled -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Disable opening and closing window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Display ASCII control characters using caret notation in standard text views
# Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Auto mount all disks before login
sudo defaults write /Library/Preferences/SystemConfiguration/ autodiskmount AutomountDisksWithoutUserLogin -bool true

# Number of recent items: Applications: None
osascript -e 'tell application "System Events" to tell appearance preferences to set recent applications limit to 0'

# Number of recent items: Documents: None
osascript -e 'tell application "System Events" to tell appearance preferences to set recent documents limit to 0'

# Number of recent items: Servers: None
osascript -e 'tell application "System Events" to tell appearance preferences to set recent servers limit to 0'


###############################################################################
# Desktop & Screensaver
###############################################################################
echo "  -> Desktop"

### Pref Pane ###

# Menu bar transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool true

# Start screensaver: Never
defaults -currentHost write com.apple.screensaver '{ idleTime = 0; moduleDict = { moduleName = Spectrum; path = "/System/Library/Screen Savers/Spectrum.qtz"; type = 1; }; }';

### Hidden ###

# Menu bar: show remaining battery percentage; hide time
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.menuextra.battery ShowTime -string "NO"

# Menu bar: hide useless icons
defaults -currentHost write com.apple.systemuiserver dontAutoLoad -array-add  "/System/Library/CoreServices/Menu Extras/TimeMachine.menu"
defaults -currentHost write com.apple.systemuiserver dontAutoLoad -array-add  "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"
defaults -currentHost write com.apple.systemuiserver dontAutoLoad -array-add  "/System/Library/CoreServices/Menu Extras/Volume.menu"
defaults -currentHost write com.apple.systemuiserver dontAutoLoad -array-add  "/System/Library/CoreServices/Menu Extras/User.menu"

# Customize menu bar
defaults write com.apple.systemuiserver 'menuExtras' -array '/Library/Application\ Support/iStat\ local/extras/MenuCracker.menu' '/System/Library/CoreServices/Menu Extras/TextInput.menu' '/System/Library/CoreServices/Menu Extras/AirPort.menu' '/System/Library/CoreServices/Menu Extras/Battery.menu' '/System/Library/CoreServices/Menu Extras/Clock.menu' 

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "$HOME/Pictures/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

###############################################################################
# Dock 
###############################################################################
echo "  -> Dock"

### Pref Pane ###

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 48

# Magnification off
defaults write com.apple.dock magnification -bool false

# Magnification size
defaults write com.apple.dock 'largesize' -int 64

# dock position
defaults write com.apple.dock orientation -string "center"
defaults write com.apple.dock pinning -string "center"

# minimize effect
defaults write com.apple.dock mineffect -string "Genie"

# Minimize window when titlebar is double clicked
defaults write NSGlobalDomain AppleMiniaturizeOnDoubleClick -bool true

# minimize to application icon
defaults write com.apple.dock minimize-to-application -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool false

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool false


### Hidden ###

# Disable Drag to Spaces
defaults write com.apple.dock workspaces-edge-delay -float 0.1

# Enable highlight hover effect for the grid view of a stack (Dock)
defaults write com.apple.dock mouse-over-hilte-stack -bool true

# Enable the 2D Dock
defaults write com.apple.dock no-glass -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool false

# Enable iTunes track notifications in the Dock
defaults write com.apple.dock itunes-notifications -bool true

# Enable spring loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Remote autohide animation
defaults write com.apple.dock autohide-time-modifier -int 0

# Remove autohide delay
defaults write com.apple.dock autohide-delay -float 0

# Reset Launchpad
#find ~/Library/Application\ Support/Dock -name "*.db" -maxdepth 1 -delete

# Dock App Icons
defaults write com.apple.dock 'checked-for-launchpad' -bool true

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.dock.plist" -c 'Delete :persistent-apps'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.dock.plist" -c 'Add :persistent-apps array'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Mission Control.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Mail.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Calendar.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Coda 2.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/GitHub.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Safari.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Notes.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Utilities/Terminal.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/iTunes.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/iBooks.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Messages.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Contacts.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Preview.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'


###############################################################################
# Mission Control
###############################################################################
echo "  -> Mission Control"

### Pref Pane ###

# Show dashboard as a space
defaults write com.apple.dock dashboard-in-overlay -bool false

# Don't automatically rearrange spaces
defaults write com.apple.dock mru-spaces -bool false

# Switch to app space during activation
defaults write NSGlobalDomain AppleSpacesSwitchOnActivate -bool true

# Group windows by app in expose
defaults write com.apple.dock expose-group-by-app -bool false

### Hidden ###

# Disable Dashboard
# defaults write com.apple.dashboard 'mcx-disabled' -bool true

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1


###############################################################################
# Language & Text
###############################################################################
echo "  -> Language"

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool true

# FIXME Add Russian phonetic keyboard
defaults -currentHost write com.apple.HIToolbox AppleEnabledInputSources -array-add '{ InputSourceKind="Keyboard Layout"; "KeyboardLayout ID"=0; "KeyboardLayout Name"="US";}' '{ InputSourceKind="Keyboard Layout"; "KeyboardLayout ID"=19457; "KeyboardLayout Name"="Russian - Phonetic";}'


###############################################################################
# Security & Privacy
###############################################################################

# Ask for password 5 seconds after sleep
defaults write com.apple.screensaver 'askForPassword' -int 1
defaults write com.apple.screensaver 'askForPasswordDelay' -int 5

# Disable GakeKeeper
sudo spctl --master-disable

# Disable Firewall
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 0


###############################################################################
# Spotlight
###############################################################################
echo "  -> Spotlight"

### Hidden ###

# Spotlight menu keyboard shortcut: none
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist" -c 'Delete AppleSymbolicHotKeys:64' > /dev/null 2>&1
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist" -c 'Add AppleSymbolicHotKeys:64:enabled bool false'

# Spotlight window keyboard shortcut: none
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist" -c 'Delete AppleSymbolicHotKeys:65' > /dev/null 2>&1
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.symbolichotkeys.plist" -c 'Add AppleSymbolicHotKeys:65:enabled bool false'

# Disable indexing
sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search

# Hide Spotlight icon
sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search

###############################################################################
# Displays
###############################################################################
echo "  -> Displays"

# Automatically adjust brightness: off
defaults write com.apple.BezelServices 'dAuto' -bool false

# sudo defaults write /Library/Preferences/com.apple.windowserver 'DisplayLayoutToRight' -bool true
# sudo defaults write /Library/Preferences/com.apple.windowserver 'DisplayMainOnInternal' -bool false

# Show all resolutions
sudo defaults delete /Library/Preferences/com.apple.windowserver 'DisplayResolutionDisabled' > /dev/null 2>&1
sudo defaults write /Library/Preferences/com.apple.windowserver 'DisplayResolutionEnabled' -bool true


###############################################################################
# Energy Saver
###############################################################################
echo "  -> Energy Saver"

# Battery

# Computer sleep: Never
sudo pmset -b sleep 30

# Display sleep: 10 min
sudo pmset -b displaysleep 10

# Put the hard disk(s) to sleep when possible: 10 min
sudo pmset -b disksleep 10

# Slightly dim the display when using this power source
sudo pmset -b lessbright 0

# Automatically reduce brightness before display goes to sleep
sudo pmset -b halfdim 0

# Restart automatically if the computer freezes
sudo pmset -b panicrestart 15

# Power Adapter

# Computer sleep: Never
sudo pmset -c sleep 0

# Display sleep: 10 min
sudo pmset -c displaysleep 10

# Put the hard disk(s) to sleep when possible: 10 min
sudo pmset -c disksleep 10

# Wake for network access
sudo pmset -c womp 1

# Automatically reduce brightness before display goes to sleep
sudo pmset -c halfdim 0

# Start up automatically after a power failure
sudo pmset -c autorestart 1

# Restart automatically if the computer freezes
sudo pmset -c panicrestart 15

# Show battery status in menu bar: off
# defaults -currentHost write com.apple.systemuiserver 'dontAutoLoad' -array-add '/System/Library/CoreServices/Menu Extras/Battery.menu'

###############################################################################
# Keyboard
###############################################################################
echo "  -> Keyboard"

### Pref Pane ###

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Modifier Keys… > Apple Internal Keyboard / Trackpad > Caps Lock ( ⇪) Key: No Action
defaults -currentHost write -g 'com.apple.keyboard.modifiermapping.1452-566-0' -array '<dict><key>HIDKeyboardModifierMappingDst</key><integer>-1</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'

# Modifier Keys… > Apple Keyboard [External] > Caps Lock ( ⇪) Key: No Action
defaults -currentHost write -g 'com.apple.keyboard.modifiermapping.1452-544-0' -array '<dict><key>HIDKeyboardModifierMappingDst</key><integer>-1</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'


defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 70 '<dict><key>enabled</key><false/></dict>'
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 35 '<dict><key>enabled</key><false/></dict>'
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 36 '<dict><key>enabled</key><false/></dict>'
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 37 '<dict><key>enabled</key><false/></dict>'

### Hidden ###

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 1

# Require fn key for special functions 
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool false

# Disable press-and-hold for keys in favor of key repeat
defaults write -g ApplePressAndHoldEnabled -bool true

# Automatically illuminate keyboard in low light: on
defaults write com.apple.BezelServices 'kDim' -bool true

# Turn off when computer is not used for: 5 mins
defaults write com.apple.BezelServices 'kDimTime' -int 300


###############################################################################
# Mouse & Trackpad
###############################################################################
echo "  -> Mouse"

# Mouse speed
defaults write -g com.apple.mouse.scaling -float 5

# Scrolling speed
defaults write -g com.apple.scrollwheel.scaling -float 3

# Double click speed
defaults write -g doubleClickThreshold -float 1.4

# Trackpad auto orientation
defaults write com.apple.trackpad.orientation TrackpadOrientationMode 1 
sudo defaults write com.apple.MultitouchSupport ForceAutoOrientation YES

# Trackpad speed
defaults write -g com.apple.trackpad.scaling -float 1

# Trackpad scrolling speed
defaults write -g com.apple.trackpad.scrolling -float 0.6875

# Active Tab: Point & Click
# defaults write com.apple.systempreferences 'trackpad.lastselectedtab' -int 0

# Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write -g com.apple.mouse.tapBehavior -int 1

# Map bottom left corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadLeftClick -bool true
defaults -currentHost write -g com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write -g com.apple.trackpad.enableSecondaryClick -int 1

# 3 finger tap off
defaults -currentHost write -g com.apple.trackpad.threeFingerTapGesture -int 0

# 3 finger drag off
defaults -currentHost write -g com.apple.trackpad.threeFingerDragGesture -int 0

# Scroll direction: natural: no
#defaults write -g com.apple.swipescrolldirection -bool true

# Pinch gesture on
defaults -currentHost write -g com.apple.trackpad.pinchGesture -int 1

# Smart Zoom
defaults -currentHost write -g com.apple.trackpad.twoFingerDoubleTapGesture -int 1

# Rotate Gesture on
defaults -currentHost write -g com.apple.trackpad.rotateGesture -int 1

# Two finger swipe between pages
defaults write -g AppleEnableSwipeNavigateWithScrolls -int 1

# Three finger swipe between spaces
defaults -currentHost write -g com.apple.trackpad.threeFingerHorizSwipeGesture -int 2

# Notification center gesture on
defaults -currentHost write -g com.apple.trackpad.twoFingerFromRightEdgeSwipeGesture -int 3

# Three finger vertical for Mission Control
defaults write com.apple.dock showMissionControlGestureEnabled -int 1

# Expose
defaults write com.apple.dock showAppExposeGestureEnabled -int 1

# Launchpad
defaults write com.apple.dock showLaunchpadGestureEnabled -int 1

# Desktop
defaults write com.apple.dock showDesktopGestureEnabled -int 1

###############################################################################
# Sound
###############################################################################
echo "  -> Sound"

# Select an alert sound: Sosumi
#defaults write com.apple.systemsound 'com.apple.sound.beep.sound' -string '/System/Library/Sounds/Sosumi.aiff'
defaults write com.apple.systemsound 'com.apple.sound.beep.sound' -string '/Users/christofferwinterkvist/Library/Sounds/Silence.aiff'

# Don't play user interface sound effects
defaults write com.apple.systemsound 'com.apple.sound.uiaudio.enabled' -int 0

# Don't play feedback when volume is changed
defaults write -g 'com.apple.sound.beep.feedback' -bool false


###############################################################################
# Network
###############################################################################
echo "  -> Network"

# Ethernet > Advanced… > DNS
# EN0=$(/usr/sbin/networksetup -listnetworkserviceorder | awk -F'\\) ' '/Ethernet/ { printf $2 }')
# /usr/sbin/networksetup -setdnsservers "$EN0" 127.0.0.1

# Wi-Fi > Advanced… > DNS
# EN1=$(/usr/sbin/networksetup -listnetworkserviceorder | awk -F'\\) ' '/Wi-Fi/ { printf $2 }')
# /usr/sbin/networksetup -setdnsservers "$EN1" 127.0.0.1


###############################################################################
# Bluetooth
###############################################################################
echo "  -> Bluetooth"

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40


###############################################################################
# Sharing
###############################################################################
echo "  -> Sharing"

# Computer Name: $COMPUTERNAME
# if [ ! "$(/usr/sbin/networksetup -getcomputername)" = "$COMPUTERNAME" ]; then
#   sudo /usr/sbin/networksetup -setcomputername $COMPUTERNAME
# fi

# Local Hostname: $LOCALHOSTNAME
# if [ ! "$(/usr/sbin/systemsetup -getlocalsubnetname)" = "Local Subnet Name: $LOCALHOSTNAME" ]; then
#   sudo /usr/sbin/systemsetup -setlocalsubnetname $LOCALHOSTNAME > /dev/null 2>&1
# fi

# Turn Printer Sharing on
# cupsctl --share-printers

# Turn SSH on
# systemsetup -setremotelogin on
# sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist


###############################################################################
# Users & Groups
###############################################################################
echo "  -> Users"

### [Right Click] > Advanced Options… > Login shell: /bin/zsh
#if [ ! $SHELL = '/usr/local/bin/fish' ]; then
#  chsh -s /usr/local/bin/fish
#  sudo chsh -s /usr/local/bin/fish
#fi

# Login Options > Display login window as: Name and password
# sudo defaults write /Library/Preferences/com.apple.loginwindow 'SHOWFULLNAME' -bool true

# Start on login
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Adium.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Alfred.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/BetterSnapTool.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/BetterTouchTool.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Boom.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Bowtie.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Caffeine.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Calendar.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/CalendarBar.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/CheatSheet.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/CoBook.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Coffee Break.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Dash.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Divvy.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Dropbox.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/GeekTool.app/Contents/Plugins/GeekTool.prefPane/Contents/Resources/GeekTool Helper.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Google Drive.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Mail.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Plex Media Server.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/uTorrent.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/QuickCursor.app" }' > /dev/null 2>&1
#osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Wallpaper Wizard.app" }' > /dev/null 2>&1


###############################################################################
# Date & Time
###############################################################################
echo "  -> Time"

# Date options: Show time am/pm
defaults write com.apple.menuextra.clock 'DateFormat' -string 'HH:mm'

###############################################################################
# Software Update
###############################################################################
echo "  -> Updates"

# Check for updates: off
# sudo /usr/sbin/softwareupdate --schedule off > /dev/null 2>&1
# sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate 'ScheduleFrequency' -int -1
# sudo defaults write /private/var/db/launchd.db/com.apple.launchd/overrides 'com.apple.softwareupdatecheck.initial' -dict 'Disabled' -bool true
# sudo defaults write /private/var/db/launchd.db/com.apple.launchd/overrides 'com.apple.softwareupdatecheck.periodic' -dict 'Disabled' -bool true
# sudo plutil -convert xml1 /private/var/db/launchd.db/com.apple.launchd/overrides.plist

# Download updates automatically
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate 'AutomaticDownload' -int 1
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate 'ConfigDataInstall' -int 1


###############################################################################
# Speech
###############################################################################
echo "  -> Speech"

# Speak selected text when the key is pressed: on
defaults write com.apple.speech.synthesis.general.prefs 'SpokenUIUseSpeakingHotKeyFlag' -bool true


###############################################################################
# Time Machine
###############################################################################
echo "  -> Time Machine"

# Time Machine: off
# defaults write com.apple.TimeMachine 'AutoBackup' -bool false

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable local Time Machine backups
hash tmutil &> /dev/null && sudo tmutil disablelocal


###############################################################################
# Accessibility
###############################################################################
echo "  -> Accessibility"

# Enable access for assistive devices
# osascript -e 'tell application "System Events" to set UI elements enabled to true'
echo -n 'a' | sudo tee /private/var/db/.AccessibilityAPIEnabled > /dev/null 2>&1 
sudo chmod 444 /private/var/db/.AccessibilityAPIEnabled

# Zoom: Options… > Smooth images (Press ⌥ ⌘\ to turn smoothing on or off): off
defaults write com.apple.universalaccess 'closeViewSmoothImages' -bool true

# Zoom: Options… > Use scroll wheel with modifier keys to zoom: on
defaults write com.apple.universalaccess 'closeViewScrollWheelToggle' -bool true
# Zoom: Options… > Use scroll wheel with modifier keys to zoom: ^ [control]
defaults write com.apple.universalaccess 'HIDScrollZoomModifierMask' -int 262144

# For difficulties seeing the cursor > Cursor Size: 1.5x
# defaults write com.apple.universalaccess 'mouseDriverCursorSize' -float 1.5

# Enable trackpad scrolling
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadScroll -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadMomentumScroll -int 1

# Enable trackpad dragging
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad DragLock -int 1


###############################################################################
# Finder                                                                      #
###############################################################################
echo "Configuring Applications..."
echo "  -> Finder"

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool false

# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder AnimateInfoPanes -bool false
defaults write com.apple.finder AnimateWindowZoom -bool false

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: show hidden files by default
# defaults write com.apple.Finder AppleShowAllFiles -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool false

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool false

# Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# no finder sounds
defaults write com.apple.finder 'FinderSounds' -bool false

# group by type
defaults write com.apple.finder 'FXPreferredGroupBy' -string 'Kind'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ExtendedListViewSettings:calculateAllSizes" bool'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ExtendedListViewSettings:calculateAllSizes" bool true'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ExtendedListViewSettings:useRelativeDates" bool'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ExtendedListViewSettings:useRelativeDates" bool false'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ListViewSettings:calculateAllSizes" bool'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ListViewSettings:calculateAllSizes" bool true'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ListViewSettings:useRelativeDates" bool'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ListViewSettings:useRelativeDates" bool false'

# Show item info below icons on the desktop and in other icon views
# /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# FIXME Enable snap-to-grid for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Increase grid spacing for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 12" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 12" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 12" ~/Library/Preferences/com.apple.finder.plist

# Increase the size of icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 32" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 32" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 32" ~/Library/Preferences/com.apple.finder.plist

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Empty Trash securely by default
# defaults write com.apple.finder EmptyTrashSecurely -bool true

# Enable AirDrop over Ethernet and on unsupported Macs running Lion
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Remove Dropbox’s green checkmark icons in Finder
file=/Applications/Dropbox.app/Contents/Resources/check.icns
[ -e "$file" ] && mv -f "$file" "$file.bak"
unset file

###############################################################################
# Safari & WebKit                                                             #
###############################################################################
echo "  -> Safari"

# Disable Safari’s thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Make Safari’s search banners default to Contains instead of Starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Remove useless icons from Safari’s bookmarks bar
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

###############################################################################
# Address Book, Dashboard, iCal, iTunes, Mail, and Disk Utility               #
###############################################################################
echo "  -> OSX Apps"

# Enable the debug menu in Address Book
defaults write com.apple.addressbook ABShowDebugMenu -bool true

# Enable Dashboard dev mode (allows keeping widgets on the desktop)
defaults write com.apple.dashboard devmode -bool true

# Enable the debug menu in iCal
defaults write com.apple.iCal IncludeDebugMenu -bool true

# Make the iTunes arrow links go to your library instead of the iTunes Store
defaults write com.apple.iTunes invertStoreLinks -bool true

# Disable the iTunes arrow links completely
defaults write com.apple.iTunes show-store-arrow-links -bool false

# Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes
defaults write com.apple.iTunes disablePing -bool true

# Make ⌘ + F focus the search input in iTunes
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Target Search Field" "@F"

# Disable send and reply animations in Mail.app
defaults write com.apple.Mail DisableReplyAnimations -bool true
defaults write com.apple.Mail DisableSendAnimations -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Enable the debug menu in Disk Utility
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true

###############################################################################
# Terminal                                                                    #
###############################################################################
echo "  -> Terminal"

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Enable “focus follows mouse” for Terminal.app and all X11 apps
defaults write com.apple.terminal FocusFollowsMouse -bool true
defaults write org.x.X11 wm_ffm -bool true

###############################################################################
# Twitter.app                                                                 #
###############################################################################
echo "  -> Twitter"

# Disable smart quotes as it’s annoying for code tweets
defaults write com.twitter.twitter-mac AutomaticQuoteSubstitutionEnabled -bool false

# Show the app window when clicking the menu icon
defaults write com.twitter.twitter-mac MenuItemBehavior -int 1

# Enable the hidden ‘Develop’ menu
defaults write com.twitter.twitter-mac ShowDevelopMenu -bool true

# Open links in the background
defaults write com.twitter.twitter-mac openLinksInBackground -bool true

# Allow closing the ‘new tweet’ window by pressing `Esc`
defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true

# Show full names rather than Twitter handles
defaults write com.twitter.twitter-mac ShowFullNames -bool true

# Hide the app in the background if it’s not the front-most window
defaults write com.twitter.twitter-mac HideInBackground -bool true

###############################################################################
# Kill affected applications                                                  #
###############################################################################
echo "Restarting..."

for app in Finder Dock Mail Safari iTunes iCal Address\ Book SystemUIServer Twitter; do
  killall "$app" > /dev/null 2>&1
done

echo "Done. Note that some of these changes require a logout/restart to take effect."