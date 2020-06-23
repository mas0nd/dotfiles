#!/usr/bin/env zsh

unsetopt AUTO_CD

export COMPLETION_WAITING_DOTS="true"
export DISABLE_LS_COLORS="true"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="dracula"
source $ZSH/oh-my-zsh.sh

plugins=(
  git
)

