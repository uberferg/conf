# set vim as default editor
export VISUAL=vim
export EDITOR=$VISUAL

# set terminal to vi mode
set -o vi

# enable core files
ulimit -c unlimited

# disable Ctrl-S/Ctrl-Q terminal stop/start
#stty stop ''
#stty start ''
#stty -ixon
#stty -ixoff


###############################################################################
# ALIASES
###############################################################################
alias edba='vim ~/.bash_aliases'
alias ..='cd ..'
