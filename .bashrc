#  _               _              
# | |__   __ _ ___| |__  _ __ ___ 
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__ 
# |_.__/ \__,_|___/_| |_|_|  \___|

# .bashrc - Base

extract () {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xjf $1        ;;
             *.tar.gz)    tar xzf $1     ;;
             *.bz2)       bunzip2 $1       ;;
             *.rar)       rar x $1     ;;
             *.gz)        gunzip $1     ;;
             *.tar)       tar xf $1        ;;
             *.tbz2)      tar xjf $1      ;;
             *.tgz)       tar xzf $1       ;;
             *.zip)       unzip $1     ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}


#dirsize - finds directory sizes and lists them for the current directory
dirsize ()
{
du -shx * .[a-zA-Z0-9_]* 2> /dev/null | \
egrep '^ *[0-9.]*[MG]' | sort -n > /tmp/list
egrep '^ *[0-9.]*M' /tmp/list
egrep '^ *[0-9.]*G' /tmp/list
rm -rf /tmp/list
}

# Common Shortcuts
alias q=exit
alias h=history
alias lsa='ls -a'
alias lsl='ls -l'
alias lsla='ls -la'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'
alias svim="sudo vim"

# Config Shortcuts
alias vbash="vim  ~/.bashrc"
alias vvim="vim ~/.vimrc"
alias vmux="vim ~/.tmux.conf"

# Let there be color in grep!
alias grep="grep --color=auto"

# Set Vim as my default editor
export EDITOR="vim"

if [ -e ~/.locals ]; then
	source ~/.locals
fi

# Launch tmux by default in xterm
if command -v tmux>/dev/null; then
  [[  $TERM =~ xterm ]] && [ -z $TMUX ] && exec tmux
fi

if [ -x "$(command -v setxkbmap)" ]; then
  setxkbmap -option "caps:swapescape"
fi
