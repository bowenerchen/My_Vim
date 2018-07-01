"-------------vundle----------------
set nocp
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Basic Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'tczengming/autoload_cscope.vim'
Plugin 'Shougo/neocomplcache'

"go packages
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode'
"Plugin 'alecthomas/gometalinter'
Plugin 'kisielk/errcheck'
Plugin 'zmb3/gogetdoc'

"added end
call vundle#end()
filetype plugin indent on
"----------------------------------

"=================================
"-----------base config-----------
" basic setup
set hlsearch                                    " High light search
set ts=4                                        " 1 tab = 4 space
set sw=4                                        " Tab width
set et                                          " Fill auto-indent with blanks
set smartindent                                 " Auto indenting for C Programs
set smarttab                                    " Use shift width when inseting tab
set nobackup                                    " No Backup Files
set noswapfile                                  " No Swap Files
set ruler                                       " Show cursor line and cloum in status line
set showmatch                                   " Show match e.g. '(' and ')'
set incsearch                                   " Search while input key words
set t_Co=256                                    "Tell Vim that the terminal supports 256 colors
set number                                      " Show line number
set laststatus=2                                " Always show the status line
set backspace=indent,eol,start                  " Set backspace can delete all words
set guifont=ubuntu\ mono\ 16                    " Set Font Size
set ignorecase
set smartcase
set scrolloff=7
syntax on                                       " code show high light
colorscheme molokai_dark

" Set Visual mode backgroud color
highlight Visual cterm=NONE ctermbg=DarkGrey ctermfg=NONE guibg=Gray

" Set comment color
highlight Comment ctermfg=Blue


" Set line number color
" highlight LineNr ctermfg=White
  highlight LineNr ctermfg=Gray

" File Type Open
filetype on
filetype plugin on
filetype indent on

"" Mouse Settings
set selection=inclusive "don't exclusive the last word
set selectmode=mouse,key

"remember last position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

""so ~/.vim/autoclose.vim
""let g:autoclose_vim_commentmode = 1

" vim shortcut prefix key
let mapleader = ","


""================================
"------------plugins-------------
" airline parameters
let g:airline_theme = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#whitespace#symbol = '!'
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#show_close_button = 1
"let g:airline#extensions#tabline#close_symbol = 'X'
"let g:airline#extensions#ycm#enabled = 1
"let g:airline#extensions#ycm#error_symbol = 'E:'
"let g:airline#extensions#ycm#warning_symbol = 'W:'
" switch to next buffer
nnoremap <silent> <C-n> :bn<cr>
nnoremap <silent> <C-p> :bp<cr>
" close buffer or buffers,command :%bd will close all buffers
nnoremap <silent> <C-g> :bd<cr>

" NERDTree
let g:NERDTreeWinPos = 'left'
let g:NERDTreeWinSize = 20
let g:NERDTreeShowLineNumbers = 0
nnoremap <silent> <leader>ll :NERDTreeToggle<cr><c-w>p

" tagbar
let g:tagbar_type_go = {'ctagstype' : 'go', 'kinds' : ['p:package','i:imports:1', 'c:constants','v:variables','t:types', 'n:interfaces','w:fields','e:embedded', 'm:methods','r:constructor','f:functions'], 'sro' : '.','kind2scope' : {'t' : 'ctype', 'n' : 'ntype'},'scope2kind' : {'ctype' : 't', 'ntype' : 'n'},'ctagsbin'  : 'gotags', 'ctagsargs' : '-sort -silent'}
let g:tagbar_autofocus = 0
let g:tagbar_left = 0
let g:tagbar_expand = 1
let g:tagbar_compact = 1
let g:tagbar_singleclick = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30
let g:tagbar_autoclose = 0
nnoremap <silent> <leader>rr :TagbarToggle<cr>

" syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '!E'
let g:syntastic_style_error_symbol = '!E'
let g:syntastic_warning_symbol = '?W'
let g:syntastic_style_warning_symbol = '?W'
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
nnoremap <c-e> :Errors<cr>
nnoremap <c-r> :lclose<cr>
nnoremap <c-t> :SyntasticReset<cr>
nnoremap <c-z> :lne<cr>
nnoremap <c-f> :lp<cr>

" vim-go
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_template_autocreate = 1
let g:go_fmt_autosave = 1
let g:go_def_mode = 'godef'
let g:go_fmt_command = 'goimports'
let g:go_get_update = 0
let g:syntastic_go_checkers = ['golint', 'govet', 'gometalinter']
let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=errcheck']
let g:go_fmt_fail_silently = 1
let g:go_list_type = 'quickfix'
let g:go_def_reuse_buffer = 1
let g:go_highlight_format_strings = 1
let g:go_autodetect_gopath = 1
let g:go_template_autocreate = 1
let g:go_template_file = "hello_world.go"
let g:go_template_test_file = "hello_world_test.go"

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview
let g:neocomplcache_enable_auto_select = 1 
let g:Neocomplachetag=1

"-----------------cscope-----------------
if has("cscope")
set csprg=/usr/bin/cscope
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
""let g:cscope_silent = 1
let g:cscope_interested_files = '\.c$\|\.cpp$\|\.h$\|\.hpp$\|\.cc$\|\.java$\|\.go'
""let g:cscope_auto_update = 1
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
"show match window or not
"next result,previous result
nnoremap<C-u> :cn<cr>
nnoremap<C-d> :cp<cr>

" IndentLines
let g:indentLine_enabled = 1
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239
"let g:indentLine_concealcursor = 'inc'
"set conceallevel=1
"let g:indentLine_conceallevel = 1
"let g:indentLine_bufNameExclude = ['NERD_tree.*','*.conf','*.txt']

