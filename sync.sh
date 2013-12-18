#!/bin/sh
CURRENT_FOLDER=$(pwd)
if [ "$1" = "init" ]; then
  /bin/sh "/Users/christofferwinterkvist/Library/Mobile Documents/iCloud/Developer/Configuration/OSX-Configuration/sync.sh" "pull"
  echo "============INIT=============="
  /bin/sh "/Users/christofferwinterkvist/Library/Mobile Documents/iCloud/Developer/Configuration/OSX-Configuration/init.sh"
fi

if [ "$1" = "push" ]; then
  echo "=========iCloud PUSH=========="
  echo "Syncing Keyboard Cowboy with iCloud"
  cp /Users/christofferwinterkvist/Library/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2/Keyboard_Cowboy_2.storedata /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2/
  
  echo "Syncing Coda 2 Clips"
  cp -R /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  echo "Syncing Coda 2 Completions"
  cp -R /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  echo "Syncing Coda 2 Plug-ins"
  cp -R /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  echo "Syncing Coda 2 Styles"
  cp -R /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  
fi

if [ "$1" = "pull" ]; then
  echo "=========iCloud PULL=========="
  
  echo "Syncing Keyboard Cowboy with iCloud"
  cp /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2/Keyboard_Cowboy_2.storedata  /Users/christofferwinterkvist/Library/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2
  
  echo "Syncing Coda 2 Clips"
  cp -R /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips  /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "Syncing Coda 2 Completions"
  cp -R /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions  /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "Syncing Coda 2 Plug-ins"
  cp -R /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins  /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "Syncing Coda 2 Styles"
  cp -R /Users/christofferwinterkvist/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles  /Users/christofferwinterkvist/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
fi

