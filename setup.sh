#!/bin/bash

FILES=(".Xresources", ".vimrc", ".vim/configs/binds.vim", ".vim/configs/color.vim", ".vim/configs/plugins.vim", ".vim/configs/settings.vim", '.tmux.conf')
DIRS=(".vim/configs")

echo ' ___    __  ____  ___  __  __    ___  ___ '
echo '(   \  /  \(_  _)(  _)(  )(  )  (  _)/ __)'
echo ' ) ) )( () ) )(   ) _) )(  )(__  ) _)\__ \'
echo '(___/  \__/ (__) (_)  (__)(____)(___)(___/'

echo

for dir in "${DIRS[@]}"; do
  echo "Creating Directory: $dir"
  mkdir -p $dir
done

echo

for i in "${FILES[@]}"; do
  echo "Linking Dotfile: $i"
  ln -s -f $i $HOME/$i
done
