#                       __ _ _      
#  _____ __  _ __ ___  / _(_) | ___ 
# |_  / '_ \| '__/ _ \| |_| | |/ _ \
#  / /| |_) | | | (_) |  _| | |  __/
# /___| .__/|_|  \___/|_| |_|_|\___|
#     |_|                           

# .zprofile - Base

# Load Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Source .zshrc always
if [ -f ~/.zshrc ]; then
    . ~/.zshrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
