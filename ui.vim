"--------
" Vim UI
"--------
"colorscheme desert
set t_Co=256
set background=dark

" search
set incsearch
set ignorecase
set smartcase

" editor settings
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
set expandtab       " expand tab to space

" Added By MySelf
highlight LineNr ctermfg=Gray
"highlight LineNr ctermbg=Darkblue
set hlsearch                                    " High light search
set ts=4                                        " 1 tab = 4 space
set sw=4                                        " Tab width
set et                                          " Fill auto-indent with blanks
set smartindent                                 " Auto indenting for C Programs
set smarttab                                    " Use shift width when inseting tab
set nobackup                                    " No Backup Files
set noswapfile                                  " No Swap Files
set showmatch                                   " Show match e.g. '(' and ')'
set incsearch                                   " Search while input key words
"set t_Co=256                                    "Tell Vim that the terminal supports 256 colors
set number                                      " Show line number
set laststatus=2                                " Always show the status line
set backspace=indent,eol,start                  " Set backspace can delete all words
set guifont=ubuntu\ mono\ 16                    " Set Font Size
set ignorecase
set smartcase
set scrolloff=7
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set selection=inclusive
set selectmode=mouse,key
set report=0                                                      " always report number of lines changed                "
"set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling

set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html

" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16


" airline parameters
let g:airline_theme = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'
" switch to next buffer
nnoremap <silent> <C-N> :bn<cr>
nnoremap <silent> <C-B> :bp<cr>
" close buffer or buffers,command :%bd will close all buffers
nnoremap <silent> <C-G> :bd<cr>

" ZenCoding
let g:user_emmet_expandabbr_key='<C-j>'

" powerline
let g:Powerline_symbols = 'fancy'

" tabbar
" let g:Tb_MaxSize = 2
" let g:Tb_TabWrap = 1
" hi Tb_Normal guifg=blue ctermfg=blue
" hi Tb_Changed guifg=green ctermfg=green
" hi Tb_VisibleNormal ctermbg=252 ctermfg=235
" hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white
" hi TabLineFill cterm=none ctermfg=grey  ctermbg=cyan
" hi TabLine     cterm=none ctermfg=white ctermbg=cyan
" hi TabLineSel  cterm=none ctermfg=black ctermbg=white


" easy-motion
let g:EasyMotion_leader_key = '<Leader>'
