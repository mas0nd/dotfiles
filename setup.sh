#!/bin/bash

FILES=('.profile' \
       '.bash_profile' \
       '.zprofile' \
       '.bashrc' \
       '.zshrc' \
       '.xbindkeysrc' \
       '.Xresources' \
	   '.gdbinit' \
       '.config/aliasrc' \
       '.config/compton.conf' \
       '.config/i3/config' \
       '.config/nvim/init.vim' \
       '.config/nvim/plugins.vim' \
       '.config/nvim/color.vim' \
       '.config/nvim/settings.vim' \
       '.config/nvim/binds.vim')

DIRS=('.config' \
      '.config/i3' \
      '.config/nvim')

echo ' ___    __  ____  ___  __  __    ___  ___ '
echo '(   \  /  \(_  _)(  _)(  )(  )  (  _)/ __)'
echo ' ) ) )( () ) )(   ) _) )(  )(__  ) _)\__ \'
echo '(___/  \__/ (__) (_)  (__)(____)(___)(___/'

echo

for dir in "${DIRS[@]}"; do
  echo "Creating Directory: $dir"
  mkdir -p $HOME/$dir
done

echo

for i in "${FILES[@]}"; do
  echo "Linking Dotfile: $i"
  ln -s -f $PWD/$i $HOME/$i
done
