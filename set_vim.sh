#-----------------------------------------------------------------------------
# Author:        name - name@company.com
# Departments:   department
# Created:       2017-09-14 10:35:12
# Last modified: 2017-09-14 10:35:12
# Filename:      set_vim.sh
# Description:   
#-----------------------------------------------------------------------------

#! /bin/bash

#sudo apt-get update
#sudo apt-get install -y git gcc g++ libluajit-5.1-dev ruby-dev libperl-dev ncurses-dev make python-dev cmake

mkdir /usr/local/vim-go-tools
cp ./go/* /usr/local/vim-go-tools -r

echo "export GOPATH=/usr/local/vim-go-tools/bin;export PATH=\$PATH:\$GOPATH;" >> ~/.bashrc
source ~/.bashrc
