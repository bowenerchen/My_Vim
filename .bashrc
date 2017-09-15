# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export GOPATH=/usr/local/vim-go-tools/bin;export PATH=$PATH:$GOPATH
printf "\e[?2004l"
