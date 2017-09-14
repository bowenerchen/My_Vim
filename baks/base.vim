"----------base config-----------
set hlsearch                                    " high light search
set ts=4                                        " 1 tab = 4 space
set sw=4                                        " tab width
set et                                          " fill auto-indent with blanks
set cursorline                                  " high light current line
set showmatch                                   " show match e.g. '(' and ')'
set incsearch                                   " search while input key words
syntax on                                       " code show high light
set clipboard=unnamed                           " p can paste system buffer
set t_Co=256                                    " tell Vim that the terminal supports 256 colors
set number
set laststatus=2 
set vb t_vb=                                    " close bell voice
set backspace=indent,eol,start                  " set backspace can delete all words
colorscheme molokai_dark

autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

au BufRead,BufNewFile *.conf setfiletype nginx

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

"括号自动补全
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR><CR><Tab>}<ESC>O
inoremap < <><ESC>i

" vim shortcut prefix key
let mapleader = ","

