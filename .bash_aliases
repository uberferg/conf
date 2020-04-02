###############################################################################
#
# ~/.bash_aliases: contains terminal command aliases, sourced by ~/.bashrc
#
###############################################################################

##############
# nVidia/CUDA
##############
# make cuda accessible when building on this machine
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:$LD_LIBRARY_PATH
export PATH=/usr/local/cuda-8.0/bin:$PATH


###########
# Anaconda
###########
# Add anaconda install location to PATH.
# By adding it AFTER the existing PATH, we find the system-level 
# python/python3 executable first from bash, so we can add an
# alias to easily access the Anaconda python shell
# export PATH=$PATH:/home/aferg/anaconda3/bin
# alias anathonda='/home/aferg/anaconda3/bin/python'
# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/aferg/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    \eval "$__conda_setup"
#else
#    if [ -f "/home/aferg/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/aferg/anaconda3/etc/profile.d/conda.sh"
#        CONDA_CHANGEPS1=false conda activate base
#    else
#        \export PATH="$PATH:/home/aferg/anaconda3/bin"
#    fi
#fi
#unset __conda_setup
# <<< conda init <<<



##########
# Aliases
##########
alias edbrc='vim ~/.bashrc'
alias edba='vim ~/.bash_aliases'

alias ..='cd ..'

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

