# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Source ece344 definitions
ece344_BASHRC_DIR=~/ece344-bashrc
# source $ece344_BASHRC_DIR/git-prompt.sh
source $ece344_BASHRC_DIR/aliases.sh
# export GIT_PS1_SHOWDIRTYSTATE=1

# User specific aliases and functions
#PATH="$HOME"/ece344/sys161/bin:"$HOME"/ece344/sys161/tools/bin:$PATH
export PATH=/cad2/ece344s/cs161/bin:$PATH

# Change shell prompt
#export PS1='\[$(tput bold)\]\[$(tput setaf 2)\][\u@\h \w\[$(tput setaf 5)\]$(__git_ps1 " (%s)")\[$(tput setaf 2)\]]\$\[$(tput sgr0)\] '
