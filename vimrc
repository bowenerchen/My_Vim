"-------------fish------------------
" fix fish PluginInstall error
if $SHELL =~ 'bin/fish' || $SHELL =~ '/usr/local/bin/fish'
    set shell=/bin/bash
endif

filetype off
set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()



" Loading My Settings
so ~/.vim/mysettings.vim
