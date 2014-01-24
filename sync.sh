#!/bin/sh
HOME_FOLDER=
CURRENT_FOLDER=$(pwd)
CURRENT_TIME=$(date "+%Y-%m-%d-%H%M%S")
BACKUP_PATH=~/.Trash/$CURRENT_TIME

/usr/bin/killall -u $USER cfprefsd

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
  
  echo "📅 Syncing Calendar"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.iCal.plist $TARGET
  cp $HOME/Library/Preferences/com.apple.iCal.plist $HOME/Library/Mobile\ Documents/iCloud/Preferences

  echo "📇 Syncing Contacts"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.AddressBook.plist $TARGET
  cp $HOME/Library/Preferences/com.apple.AddressBook.plist $HOME/Library/Mobile\ Documents/iCloud/Preferences

  echo "🍃 Syncing Coda 2"
  echo "  Clips"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips $TARGET
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  echo "  Completions"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions $TARGET
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  
  echo "  Modes"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Modes $TARGET
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Modes $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  
  echo "  Plug-ins"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins $TARGET
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  
  echo "  Preferences"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.panic.coda.CodaIndexer.plist $TARGET
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.panic.Coda2.plist $TARGET
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Preferences/io.emmet.EmmetCoda.plist $TARGET
  
  cp -R $HOME/Library/Preferences/com.panic.coda.CodaIndexer.plist $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.panic.coda.CodaIndexer.plist
  cp -R $HOME/Library/Preferences/com.panic.Coda2.plist $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.panic.Coda2.plist
  cp -R $HOME/Library/Preferences/io.emmet.EmmetCoda.plist $HOME/Library/Mobile\ Documents/iCloud/Preferences/io.emmet.EmmetCoda.plist
  
  echo "  Styles"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles $TARGET
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/
  echo "  Sites"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites $TARGET
	mkdir $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites
  cp -R $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites/*.codasite $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites
  
  echo "💻 Syncing Finder"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.finder.plist $TARGET
  cp $HOME/Library/Preferences/com.apple.finder.plist $HOME/Library/Mobile\ Documents/iCloud/Preferences

	echo "🚦 Syncing GitHub"
	mv -f $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.github.GitHub.plist $TARGET
	cp $HOME/Library/Preferences/com.github.GitHub.plist $HOME/Library/Mobile\ Documents/iCloud/Preferences
  
  mv $HOME/Library/Mobile\ Documents/iCloud/Application\ Support/GitHub\ for\ Mac $TARGET
  cp -R $HOME/Library/Application\ Support/GitHub\ for\ Mac $HOME/Library/Mobile\ Documents/iCloud/Application\ Support/

  echo "⭐️ Syncing Keyboard Cowboy"
  cp $HOME/Library/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2/Keyboard_Cowboy_2.storedata $HOME/Library/Mobile\ Documents/iCloud/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2/

  echo "📥 Syncing Mail"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.mail*.plist $TARGET
  cp $HOME/Library/Preferences/com.apple.mail*.plist $HOME/Library/Mobile\ Documents/iCloud/Preferences
  
  echo "💬 Syncing Messages"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.iChat*.plist $TARGET
  cp $HOME/Library/Preferences/com.apple.iChat*.plist $HOME/Library/Mobile\ Documents/iCloud/Preferences

  echo "☑️ Syncing Reminders"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.reminders.plist $TARGET
  cp $HOME/Library/Preferences/com.apple.reminders.plist $HOME/Library/Mobile\ Documents/iCloud/Preferences

  echo "🌊 Syncing Safari"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.Safari.plist $TARGET
  cp $HOME/Library/Preferences/com.apple.Safari.plist $HOME/Library/Mobile\ Documents/iCloud/Preferences

  echo "🌀 Syncing Quicksilver"
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.blacktree.Quicksilver.plist $TARGET
  mv -f $HOME/Library/Mobile\ Documents/iCloud/Application\ Support/Quicksilver $TARGET
  cp -R $HOME/Library/Application\ Support/Quicksilver $HOME/Library/Mobile\ Documents/iCloud/Application\ Support/
  cp $HOME/Library/Preferences/com.blacktree.Quicksilver.plist $HOME/Library/Mobile\ Documents/iCloud/Preferences

  echo "✅ Done"
fi

if [ "$1" = "pull" ]; then
	TARGET=$BACKUP_PATH-pull
	if [ ! -d "$TARGET" ]; then
	  mkdir $TARGET
	fi
  echo "⬇️ ☁️ iCloud"
  
  echo "📅 Syncing Calendar"
  mv -f $HOME/Library/Preferences/com.apple.iCal.plist $TARGET
  cp $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.iCal.plist $HOME/Library/Preferences
  #/usr/bin/defaults read com.apple.iCal.plist

  echo "📇 Syncing Contacts"
  mv -f $HOME/Library/Preferences/com.apple.AddressBook.plist $TARGET
  cp $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.AddressBook.plist $HOME/Library/Preferences
  #/usr/bin/defaults read com.apple.AddressBook.plist

  echo "🍃 Syncing Coda 2"
  echo "  Clips"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Clips  $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "  Completions"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Completions  $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "  Modes"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Modes $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Modes  $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "  Plug-ins"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Plug-ins  $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "  Preferences"
  mv -f $HOME/Library/Preferences/com.panic.coda.CodaIndexer.plist $TARGET
  mv -f $HOME/Library/Preferences/com.panic.Coda2.plist $TARGET
  mv -f $HOME/Library/Preferences/io.emmet.EmmetCoda.plist $TARGET
  
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.panic.coda.CodaIndexer.plist $HOME/Library/Preferences/com.panic.coda.CodaIndexer.plist
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.panic.Coda2.plist $HOME/Library/Preferences/com.panic.Coda2.plist
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Preferences/io.emmet.EmmetCoda.plist $HOME/Library/Preferences/io.emmet.EmmetCoda.plist
  
  echo "  Styles"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Styles  $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2
  echo "  Sites"
  mv -f $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites $TARGET
	mkdir $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites/*.codasite  $HOME/Library/Containers/com.panic.Coda2/Data/Library/Application\ Support/Coda\ 2/Sites

  echo "💻 Syncing Finder"
  mv -f $HOME/Library/Preferences/com.apple.finder.plist $TARGET
  cp  $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.finder.plist $HOME/Library/Preferences

	echo "🚦 Syncing GitHub"
	mv -f $HOME/Library/Preferences/com.github.GitHub.plist $TARGET
	cp  $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.github.GitHub.plist $HOME/Library/Preferences
  
  mv -f $HOME/Library/Application\ Support/GitHub\ for\ Mac $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Application\ Support/GitHub\ for\ Mac $HOME/Library/Application\ Support/
	
  echo "⭐️ Syncing Keyboard Cowboy"
  cp $HOME/Library/Mobile\ Documents/iCloud/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2/Keyboard_Cowboy_2.storedata  $HOME/Library/Containers/com.zenangst.Keyboard-Cowboy-2/Data/Library/Application\ Support/com.zenangst.Keyboard_Cowboy_2
  
  echo "📥 Syncing Mail"
  mv -f $HOME/Library/Preferences/com.apple.mail*.plist $TARGET
  cp  $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.mail*.plist $HOME/Library/Preferences
  #/usr/bin/defaults read com.apple.mail.plist

  echo "💬 Syncing Messages"
  mv -f $HOME/Library/Preferences/com.apple.iChat*.plist $TARGET
  cp  $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.iChat*.plist $HOME/Library/Preferences
  #/usr/bin/defaults read com.apple.iChat.plist

  echo "☑️ Syncing Reminders"
  mv -f $HOME/Library/Preferences/com.apple.reminders.plist $TARGET
  cp  $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.reminders.plist $HOME/Library/Preferences  
  cp  $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.reminders.plist $HOME/Library/Containers/com.apple.reminders/Data/Library/Preferences 
  #/usr/bin/defaults read com.apple.reminders.plist

  echo "🌊 Syncing Safari"
  mv -f $HOME/Library/Preferences/com.apple.Safari.plist $TARGET
  cp  $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.apple.Safari.plist $HOME/Library/Preferences
  #/usr/bin/defaults read com.apple.Safari.plist
  
  echo "🌀 Syncing Quicksilver"
  mv -f $HOME/Library/Application\ Support/Quicksilver $TARGET
  mv -f $HOME/Library/Preferences/com.blacktree.Quicksilver.plist $TARGET
  cp -R $HOME/Library/Mobile\ Documents/iCloud/Application\ Support/Quicksilver $HOME/Library/Application\ Support/
  cp  $HOME/Library/Mobile\ Documents/iCloud/Preferences/com.blacktree.Quicksilver.plist $HOME/Library/Preferences
  echo "✅ Done"
fi

/usr/bin/killall -u $USER cfprefsd
