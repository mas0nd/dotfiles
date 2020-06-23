#!/usr/bin/env zsh

unsetopt AUTO_CD

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="dracula"
source $ZSH/oh-my-zsh.sh

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
)

