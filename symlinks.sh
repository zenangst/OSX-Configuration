#!/bin/sh
cd $HOME
# Setup iCloud path
if [ ! -d "$HOME/iCloud" ]; then
  ln -s "$HOME/Library/Mobile Documents/iCloud" iCloud
fi

# Setup Developer path
if [ ! -d "$HOME/Developer" ]; then
  ln -s "$HOME/Library/Mobile Documents/iCloud/Developer" Developer
fi

# Setup .config
if [ ! -d "$HOME/.config" ]; then
  ln -s "$HOME/Library/Mobile Documents/iCloud/dotfiles/config" .config
fi

# Setup .gitignore
if [ ! -d "$HOME/.gitignore" ]; then
  ln -s "$HOME/Library/Mobile Documents/iCloud/dotfiles/gitignore" .gitignore
fi

# Setup .vimrc
if [ ! -d "$HOME/.vimrc" ]; then
  ln -s "$HOME/Library/Mobile Documents/iCloud/dotfiles/vimrc" .vimrc
fi

# Setup .vim
if [ ! -d "$HOME/.vim" ]; then
  ln -s "$HOME/Library/Mobile Documents/iCloud/dotfiles/vim" .vim
fi