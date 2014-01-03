#!/bin/sh
HOME_FOLDER=
CURRENT_FOLDER=$(pwd)
CURRENT_TIME=$(date "+%Y-%m-%d-%H%M%S")
BACKUP_PATH=~/.Trash/$CURRENT_TIME

if [ "$1" = "init" ]; then
  /bin/sh "$HOME/Library/Mobile Documents/iCloud/Developer/Configuration/OSX-Configuration/sync.sh" "pull"
  echo "============INIT=============="
  /bin/sh "$HOME/Library/Mobile Documents/iCloud/Developer/Configuration/OSX-Configuration/init.sh"
fi

if [ "$1" = "push" ]; then
	TARGET=$BACKUP_PATH-push
	if [ ! -d "$TARGET" ]; then
	  mkdir $TARGET
	fi

  echo "⬆️ ☁️ iCloud"
  echo "☑️ Syncing Keyboard Cowboy"
  cp $HOME/Library/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2/Keyboard_Cowboy_2.storedata $HOME/Library/Mobile\ Documents/iCloud/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2/
  
  echo "☑️ Syncing Quicksilver"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Application\ Support/Quicksilver $TARGET
  cp -R $HOME/Library/Application\ Support/Quicksilver $HOME/Library/Mobile\ Documents/iCloud/Application\ Support/
  
  echo "☑️ Syncing Coda 2 Clips"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips $TARGET
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  echo "☑️ Syncing Coda 2 Completions"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions $TARGET
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  
  echo "☑️ Syncing Coda 2 Modes"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Modes $TARGET
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Modes $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  
  echo "☑️ Syncing Coda 2 Plug-ins"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins $TARGET
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  
  echo "☑️ Sycning Coda 2 Preferences"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.coda.CodaIndexer.plist $TARGET
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.Coda2.plist $TARGET
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Preferences/io.emmet.EmmetCoda.plist $TARGET
  
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.coda.CodaIndexer.plist $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.coda.CodaIndexer.plist
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.Coda2.plist $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.Coda2.plist
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Preferences/io.emmet.EmmetCoda.plist $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Preferences/io.emmet.EmmetCoda.plist
  
  echo "☑️ Syncing Coda 2 Styles"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles $TARGET
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  echo "☑️ Syncing Coda 2 Sites"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites $TARGET
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  echo "✅ Done"
fi

if [ "$1" = "pull" ]; then
	TARGET=$BACKUP_PATH-pull
	if [ ! -d "$TARGET" ]; then
	  mkdir $TARGET
	fi
  echo "⬇️ ☁️ iCloud"
  
  echo "☑️ Syncing Keyboard Cowboy"
  cp $HOME/Library/Mobile\ Documents/iCloud/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2/Keyboard_Cowboy_2.storedata  $HOME/Library/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2
  
  echo "☑️ Syncing Quicksilver"
  mv -f $HOME/Library/Application\ Support/Quicksilver $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Application\ Support/Quicksilver $HOME/Library/Application\ Support/
  
  echo "☑️ Syncing Coda 2 Clips"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips  $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "☑️ Syncing Coda 2 Completions"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions  $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "☑️ Syncing Coda 2 Modes"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Modes $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Modes  $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "☑️ Syncing Coda 2 Plug-ins"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins  $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "☑️ Sycning Coda 2 Preferences"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.coda.CodaIndexer.plist $TARGET
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.Coda2.plist $TARGET
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Preferences/io.emmet.EmmetCoda.plist $TARGET
  
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.coda.CodaIndexer.plist $HOME/Library/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.coda.CodaIndexer.plist
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.Coda2.plist $HOME/Library/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.Coda2.plist
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Preferences/io.emmet.EmmetCoda.plist $HOME/Library/Containers/com.panic.Coda2/Data/Library/Preferences/io.emmet.EmmetCoda.plist
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.coda.CodaIndexer.plist $HOME/Library/Preferences/com.panic.coda.CodaIndexer.plist
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Preferences/com.panic.Coda2.plist $HOME/Library/Preferences/com.panic.Coda2.plist
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Preferences/io.emmet.EmmetCoda.plist $HOME/Library/Preferences/io.emmet.EmmetCoda.plist
  
  echo "☑️ Syncing Coda 2 Styles"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles  $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "☑️ Syncing Coda 2 Sites"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites  $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "✅ Done"
fi

