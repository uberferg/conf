export VISUAL=vim
export EDITOR=$VISUAL
set -o vi

# enable core files
ulimit -c unlimited

# disable Ctrl-S/Ctrl-Q terminal stop/start
#stty stop ''
#stty start ''
#stty -ixon
#stty -ixoff

alias edba='vim ~/.bash_aliases'
alias ..='cd ..'
