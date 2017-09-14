"-------------fish------------------
" fix fish PluginInstall error
if $SHELL =~ 'bin/fish' || $SHELL =~ '/usr/local/bin/fish'
    set shell=/bin/bash
endif

"-------------vundle----------------
set nocp
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'asins/vim-dict'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdcommenter'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-scripts/DrawIt'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'pangloss/vim-javascript'
Plugin 'Yggdroot/indentLine'
Plugin 'tbastos/vim-lua'
Plugin 'adwpc/cscopex'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/nginx.vim'
"Plugin 'Valloric/YouCompleteMe'

Plugin 'Shougo/neocomplcache'
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'
Plugin 'tczengming/autoload_cscope.vim'

"go packages
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode'
Plugin 'alecthomas/gometalinter'
Plugin 'rogpeppe/godef'
Plugin 'kisielk/errcheck'
Plugin 'jstemmer/gotags'
Plugin 'fatih/motion'
Plugin 'fatih/gomodifytags'
Plugin 'zmb3/gogetdoc'
Plugin 'josharian/impl'

"added end
call vundle#end()
filetype plugin indent on
"----------------------------------

" Loading My Settings
so ~/.vim/mysettings.vim
