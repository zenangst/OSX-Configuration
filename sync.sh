#!/bin/sh
CURRENT_FOLDER=$(pwd)
CURRENT_TIME=$(date "+%Y-%m-%d-%H%M%S")
BACKUP_PATH=~/.Trash/$CURRENT_TIME

if [ "$1" = "init" ]; then
  /bin/sh "/Users/christofferwinterkvist/Library/Mobile Documents/iCloud/Developer/Configuration/OSX-Configuration/sync.sh" "pull"
  echo "============INIT=============="
  /bin/sh "/Users/christofferwinterkvist/Library/Mobile Documents/iCloud/Developer/Configuration/OSX-Configuration/init.sh"
fi

if [ "$1" = "push" ]; then
	TARGET=$BACKUP_PATH-push
	if [ ! -d "$TARGET" ]; then
	  mkdir $TARGET
	fi

  echo "=========iCloud PUSH=========="
  echo "Syncing Keyboard Cowboy with iCloud"
  cp /Users/christofferwinterkvist/Library/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2/Keyboard_Cowboy_2.storedata /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2/
  
  echo "Syncing Coda 2 Clips"
  mv -f /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips $TARGET
  cp -R /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  echo "Syncing Coda 2 Completions"
  mv -f /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions $TARGET
  cp -R /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  
  echo "Syncing Coda 2 Modes"
  mv -f /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Modes $TARGET
  cp -R /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Modes /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  
  echo "Syncing Coda 2 Plug-ins"
  mv -f /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins $TARGET
  cp -R /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  echo "Syncing Coda 2 Styles"
  mv -f /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles $TARGET
  cp -R /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  echo "Syncing Coda 2 Sites"
  mv -f /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites $TARGET
  cp -R /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  
fi

if [ "$1" = "pull" ]; then
	TARGET=$BACKUP_PATH-pull
	if [ ! -d "$TARGET" ]; then
	  mkdir $TARGET
	fi
  echo "=========iCloud PULL=========="
  
  echo "Syncing Keyboard Cowboy with iCloud"
  cp /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2/Keyboard_Cowboy_2.storedata  /Users/christofferwinterkvist/Library/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2
  
  echo "Syncing Coda 2 Clips"
  mv -f /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips $TARGET
  cp -R /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips  /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "Syncing Coda 2 Completions"
  mv -f /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions $TARGET
  cp -R /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions  /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "Syncing Coda 2 Modes"
  mv -f /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Modes $TARGET
  cp -R /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Modes  /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "Syncing Coda 2 Plug-ins"
  mv -f /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins $TARGET
  cp -R /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins  /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "Syncing Coda 2 Styles"
  mv -f /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles $TARGET
  cp -R /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles  /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "Syncing Coda 2 Sites"
  mv -f /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites $TARGET
  cp -R /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites  /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
fi

