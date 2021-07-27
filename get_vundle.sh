#! /bin/bash

git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/w0rp/ale.git ~/.vim/pack/git-plugins/start/ale
sudo pip3 install cpplint
sudo pip3 install vim-vint
sudo yum install gem
sudo gem install mdl
sudo yum install gperf
sudo yum install iverilog
sudo pip3 install autopep8
sudo pip3 install flake8
sudo pip3 install yapf
sudo yum install pylint
sudo yum install python-devel
sudo yum install python3-devel
go get -u github.com/nsf/gocode
go get github.com/bradfitz/goimports
go get code.google.com/p/rog-go/exp/cmd/godef
# install YouCompleteMe
cd ~/.vim/bundle
git clone --recursive https://github.com/Valloric/YouCompleteMe
sudo yum install centos-release-scl
sudo yum install devtoolset-8-gcc-c++ --enablerepo='centos-sclo-rh'
scl enable devtoolset-8 'bash'
scl enable devtoolset-8 'zsh'
cd ~/.vim/plugged/YouCompleteMe
git submodule update --init --recursive
python3 install.py --go-completer -clang-completer

