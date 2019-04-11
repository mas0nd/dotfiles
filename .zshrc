#          _              
#  _______| |__  _ __ ___ 
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__ 
# /___|___/_| |_|_|  \___|

# .zshrc - Base

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="dracula"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
source $HOME/.bashrc

alias vzsh="vim ~/.zshrc"

# ls Colors
LS_COLORS=$LS_COLORS:'di=0;36:' ; export LS_COLORS
unsetopt AUTO_CD
