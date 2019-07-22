source ~/.vim/bundles.vim

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

"set nocp

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width

" Added By MySelf
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
set number                                      " Show line number
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set nocompatible
set nofoldenable                                                  " disable folding"
set scrolloff=10                                                   " 5 lines above/below cursor when scrolling
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar

"-----------------
" Plugin settings
"-----------------
let mapleader = ","

Plugin 'tczengming/autoload_cscope.vim'
if has("/usr/bin/cscope")
    set csprg=/usr/bin/cscope
elseif has("/usr/local/bin/cscope")
    set csprg=/usr/local/bin/cscope
    set csto=0
    set cst
    set nocsverb
    if filereadable("cscope.out")
            cs add cscope.out
        elseif $CSCOPE_DB != ""
                cs add $CSCOPE_DB
            endif
            set csverb
        endif
        set cscopequickfix=s-,c-,d-,i-,t-,e-
        set cscopetag
let g:cscope_interested_files = '\.c$\|\.cpp$\|\.h$\|\.hpp$\|\.cc$\|\.java$\|\.go'
"find symbol
nnoremap <leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>
"find definition
nnoremap <leader>fd :cs find g <C-R>=expand("<cword>")<CR><CR>
"find who has called me
nnoremap <leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>
"find this string
nnoremap <leader>ft :cs find t <C-R>=expand("<cword>")<CR><CR>
"find this egrep pattern
nnoremap <leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>
"find this file
nnoremap <leader>ff :cs find f <C-R>=expand("<cfile>")<CR><CR>
"find out which files had included this
nnoremap <leader>fi :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
nnoremap<C-u> :cn<cr>
nnoremap<C-d> :cp<cr>

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

