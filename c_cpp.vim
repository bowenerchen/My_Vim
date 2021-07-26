"-----------------
" ctags settings
"-----------------
set autochdir
set tags=tags

"-----------------
" cscope plugin settings
"-----------------
let mapleader = ","
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
let g:cscope_interested_files = '\.c$\|\.cpp$\|\.h$\|\.hpp$\|\.cc$|\.cxx$'
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


"-----------------
" tagbar settings
"-----------------
"设置tagbar使用的ctags的插件,必须要设置对
let g:tagbar_ctags_bin='/usr/bin/ctags'
"设置tagbar的窗口宽度
let g:tagbar_width=20
"设置tagbar的窗口显示的位置,为左边
let g:tagbar_left=1
"打开文件自动 打开tagbar
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
"映射tagbar的快捷键
map <C-g> :TagbarToggle<CR>
let g:tagbar_wrap=0
let g:tagbar_autopreview=0


"""""""""""""""""""""""""""""""
"NerdTree setting
"""""""""""""""""""""""""""""""
map <C-d> :NERDTreeToggle<CR>
"Show line number.
let g:NERDTreeShowlineNumber=1
"Show hide file.
let g:NERDTreeHidden=0
"Show Node model.
let NERDTreeDirArrows=1
"Delete help information at the top
let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable = '|'
let g:NERDTreeDirArrowCollapsible = '/'
let g:NERDTreeWinPos='right'
let g:NERDTreeWinSize=20
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \}
let g:NERDTreeGitStatusPorcelainVersion=1
let g:NERDTreeGitStatusShowClean = 1 
" 自动关闭NERDTree
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif


" 语法检查
" let g:syntastic_cpp_compiler = 'g++'
" let g:syntastic_cpp_cpplint_exec = '/usr/local/bin/cpplint'
" let g:syntastic_cpp_checkers = ['cpplint', 'g++']
" let g:syntastic_c_checkers = ['gcc', 'clang']
" " 设置 cpplint 的错误级别阈值（默认是 5），级别低于这一设置的不会显示
" let g:syntastic_cpp_cpplint_thres = 1
" let syntastic_aggregate_errors = 1

"keep the sign gutter open
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.vim$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.conf$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.py$': {'ale_linters': ['flake8'], 'ale_fixers': ['yapf']},
\}
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-J> <Plug>(ale_next_wrap)
