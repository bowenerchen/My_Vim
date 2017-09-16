"-----------------------------------------------------------------------------
" Author:        name - name@company.com
" Departments:   department
" Created:       2017-09-14 10:34:45
" LastModified:  2017-09-16 10:51:44
" Filename:      mysettings.vim
" Description:   
"-----------------------------------------------------------------------------


"================================
"----------base config-----------
" basic setup
set hlsearch                                    " High light search
set ts=4                                        " 1 tab = 4 space
set sw=4                                        " Tab width
set et                                          " Fill auto-indent with blanks
set smartindent                                 " Auto indenting for C Programs
set smarttab                                    " Use shift width when inseting tab
"set cursorline                                 " high light current line
"set cursorcolumn                               " high light current column
set nobackup                                    " No Backup Files
set noswapfile                                  " No Swap Files
set guioptions-=T                               " No tools shown
set guioptions-=m                               " No Menu Shown
set ruler                                       " Show cursor line and cloum in status line
set showmatch                                   " Show match e.g. '(' and ')'
set incsearch                                   " Search while input key words
set clipboard=unnamed                           " \"p\" can paste system buffer
set t_Co=256                                    " Tell Vim that the terminal supports 256 colors
set number                                      " Show line number
set laststatus=2                                " Always show the status line
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%] " My Status line format
set vb t_vb=                                    " Close bell voice
set noeb                                        " Close Input Error Voice
set backspace=indent,eol,start                  " Set backspace can delete all words
set guifont=Monospace\ 16                        " Set Font Size
"set scrolloff=3                                " 5 lines form Top or Buttom
syntax on                                       " code show high light

" GVim Max Window
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=40 columns=120
  "au GUIEnter * call MaximizeWindow()
else
"  " This is console Vim.
"  if exists("+lines")
"    set lines=50
"  endif
"  if exists("+columns")
"    set columns=100
"  endif
endif

" Setting for Split windows
set fillchars=vert:\ ,stl:\ ,stlnc:\  

" Theme
colorscheme molokai_dark

" Set Visual mode backgroud color
highlight Visual cterm=NONE ctermbg=DarkGrey ctermfg=NONE guibg=Gray

" Set comment color
highlight Comment ctermfg=Blue

" Set cursorline colors 
"highlight Cursor ctermfg=NONE guifg=NONE ctermbg=DarkGrey guibg=Gray 
if has('multi_byte_ime')
	    highlight Cursor guifg=NONE guibg=Green
	    highlight CursorIM guifg=NONE guibg=Purple
endif

" Set line number color
highlight LineNr ctermfg=White

" File Type Open
filetype on
filetype plugin on
filetype indent on

"" Mouse Settings
set selection=inclusive "don't exclusive the last word
set selectmode=mouse,key

"remember last position
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif
au BufRead,BufNewFile *.conf setfiletype nginx

" highlight txt files
au BufRead,BufNewFile *  setfiletype txt

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

" automatically completed Brackets
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

" vim shortcut prefix key
let mapleader = ","

"================================
"-----------functions------------
" Brackets Complete
function ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
 return "\<Right>"
 else
 return a:char
 endif
endf

function CloseBracket()
 if match(getline(line('.') + 1), '\s*}') < 0
 return "\<CR>}"
 else
 return "\<Esc>j0f}a"
 endif
endf

function QuoteDelim(char)
 let line = getline('.')
 let col = col('.')
 if line[col - 2] == "\\"
 return a:char
 elseif line[col - 1] == a:char
 return "\<Right>"
 else
 return a:char.a:char."\<Esc>i"
 endif
endf

" -------------------------------------------------------------------------------------------------
" Add C/C++/Golang Title
function AddNewTitle()
    call append(0,"/*-----------------------------------------------------------------------------")
    call append(1,"# Author:        name - name@company.com")
    call append(2,"# Department:    department")
    call append(3,"# Created:       ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(4,"# LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(5,"# Filename:      ".expand("%:t"))
    call append(6,"# Description:   ")
    call append(7,"-----------------------------------------------------------------------------*/")
    call append(8,"")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf

function UpdateTitle()
    normal m'
    call setline(5,"# LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
    normal ''
    normal mk
    call setline(6,"# Filename:      ".expand("%:t"))
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction

"for c/c++ golang and some language to add a info header
function AddTitle()
    let n = 1
    "默认为添加
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*LastModified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddNewTitle()
endfunction

" -------------------------------------------------------------------------------------------------

"for shell script to add a new info header
function AddNewShellTitle()
    call append(0,"#-----------------------------------------------------------------------------")
    call append(1,"# Author:        name - name@company.com")
    call append(2,"# Departments:   department")
    call append(3,"# Created:       ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(4,"# LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(5,"# Filename:      ".expand("%:t"))
    call append(6,"# Description:   ")
    call append(7,"#-----------------------------------------------------------------------------")
    call append(8,"")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf

"for shell script to add header
function AddShellTitle()
    let n = 1
    "默认为添加
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*LastModified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddNewShellTitle()
endfunction

" -------------------------------------------------------------------------------------------------

"for lua language to add a info header
function AddNewLuaTitle()
    call append(0,"--[[-----------------------------------------------------------------------------")
    call append(1,"# Author:        name - name@company.com")
    call append(2,"# Departments:   department")
    call append(3,"# Created:       ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(4,"# LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(5,"# Filename:      ".expand("%:t"))
    call append(6,"# Description:   ")
    call append(7,"-------------------------------------------------------------------------------]]")
    call append(8,"")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf

function UpdateLuaTitle()
    normal m'
    call setline(5,"# LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
    normal ''
    normal mk
    call setline(6,"# Filename:      ".expand("%:t"))
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction

" for lua language to add a info header
function AddLuaTitle()
    let n = 1
    while n < 10
        let line = getline(n)
        if line =~ '^\#\s*\S*LastModified:\S*.*$'
            call UpdateLuaTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddNewLuaTitle()
endfunction
" -------------------------------------------------------------------------------------------------
"for vim files to add a info header
function AddNewVimTitle()
    call append(0,"\"-----------------------------------------------------------------------------")
    call append(1,"\" Author:        name - name@company.com")
    call append(2,"\" Departments:   department")
    call append(3,"\" Created:       ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(4,"\" LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
    call append(5,"\" Filename:      ".expand("%:t"))
    call append(6,"\" Description:   ")
    call append(7,"\"-----------------------------------------------------------------------------")
    call append(8,"")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf

function UpdateVimTitle()
    normal m'
    call setline(5,"\" LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
    normal ''
    normal mk
    call setline(6,"\" Filename:      ".expand("%:t"))
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction

" for Vim config files to add a info header
function AddVimTitle()
    let n = 1
    while n < 10
        let line = getline(n)
        if line =~ '^\"\s*\S*LastModified:\S*.*$'
            call UpdateVimTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddNewVimTitle()
endfunction
"-------------------------------------------------------------------------------------------------

" set fold/unfold all key
function ForceFoldmethodIndent()
	if &foldenable
		se foldmethod=indent
	endif
endfunction

function! s:GetBufferList() 
  redir =>buflist 
  silent! ls 
  redir END 
  return buflist 
endfunction

function! LocationToggle()
  for bufnum in map(filter(split(s:GetBufferList(), '\n'), 'v:val =~ "Location List"'), 'str2nr(matchstr(v:val, "\\d\\+"))') 
    if bufwinnr(bufnum) != -1
      lclose
      return
    endif
  endfor
  let winnr = winnr()
    lopen
  if winnr() != winnr
    wincmd p
  endif
endfunction

function! NextNormalWindow() abort
    for i in range(1, winnr('$'))
        let buf = winbufnr(i)

        " skip unlisted buffers
        if !buflisted(buf)
            continue
        endif

        " skip temporary buffers with buftype set
        if getbufvar(buf, '&buftype') != ''
            continue
        endif

        " skip the preview window
        if getwinvar(i, '&previewwindow')
            continue
        endif

        " skip current window
        if i == winnr()
            continue
        endif

        return i
    endfor

    return -1
endfunction

function! QuitIfOnlyWindow() abort
    let l:buftype = getbufvar(winbufnr(winnr()), "&buftype")
    if l:buftype != "quickfix" && l:buftype != "help" && l:buftype != "nofile"
        return
    endif

    " Check if there is more than one window
    if NextNormalWindow() == -1
        " Check if there is more than one tab page
        if tabpagenr('$') == 1
            " Before quitting Vim, delete the special buffer so that
            " the '0 mark is correctly set to the previous buffer.
            " Also disable au on this command to avoid unnecessary
            " au nesting.
            if winnr('$') == 1
                if has('au')
                    noau bdelete
                endif
            endif
            quit
        else
            " Note: workaround for the fact that in new tab the buftype is set
            " too late (and sticks during this WinEntry au to the old -
            " potentially quickfix/help buftype - that would automatically
            " close the new tab and open the buffer in copen window instead
            " New tabpage has previous window set to 0
            if tabpagewinnr(tabpagenr(), '#') != 0
                let l:last_window = 0
                if winnr('$') == 1
                    let l:last_window = 1
                endif
                close
                if l:last_window == 1
                    " Note: workaround for the same bug, but w.r.t. Airline
                    " plugin (it needs to refresh buftype and status line after
                    " last special window au close on a tab page
                    if exists(':AirlineRefresh')
                        execute "AirlineRefresh"
                    endif
                endif
            endif
        endif
    endif
endfunction

" Allow :lprev to work with empty location list, or at first location
function! LocationPrevious()
  try
    lprev
  catch /:E553:/
    llast
  catch /:E42:/
    echo "Location list empty"
  catch /.*/
    echo v:exception
  endtry
endfunction

" Allow :lnext to work with empty location list, or at last location
function! LocationNext()
  try
    lnext
  catch /:E553:/
    lfirst
  catch /:E42:/
    echo "Location list empty"
  catch /.*/
    echo v:exception
  endtry
endfunction


" c-v can paste without set paste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction


" autoclose last open location/quickfix/help windows on a tab
if has('autocmd')
    aug AutoCloseAllQF
        au!
        au WinEnter * nested call QuitIfOnlyWindow()
    aug END
endif

""================================
"------------plugins-------------
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
nnoremap <silent> <C-n> :bn<cr>
nnoremap <silent> <C-p> :bp<cr>
" close buffer or buffers,command :%bd will close all buffers
nnoremap <silent> <C-g> :bd<cr>

" IndentLines
let g:indentLine_enabled = 1
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239
let g:indentLine_concealcursor = 'inc'
set conceallevel=1
let g:indentLine_conceallevel = 1

" NERDTree
let g:NERDTreeWinPos = 'left'
let g:NERDTreeWinSize = 20
let g:NERDTreeShowLineNumbers = 0
nnoremap <silent> <leader>ll :NERDTreeToggle<cr><c-w>p

" nerdcommenter
let g:NERDSpaceDelims = 1
nnoremap <silent> // :call NERDComment(0,"toggle")<CR>
vnoremap <silent> // :call NERDComment(0,"toggle")<CR>

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
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1
nnoremap <silent> <c-i> :call LocationPrevious()<cr>
nnoremap <silent> <c-f> :call LocationNext()<cr>
nnoremap <silent> > :call LocationToggle()<cr>

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
let g:go_highlight_types = 0
let g:go_highlight_operators = 0
let g:go_highlight_build_constraints = 1
let g:go_template_autocreate = 1
let g:go_fmt_autosave = 1
let g:go_def_mode = 'godef'
let g:go_fmt_command = 'goimports'
let g:go_get_update = 0
let g:syntastic_go_checkers = [ 'go' ]
let g:go_fmt_fail_silently = 1
let g:go_list_type = 'quickfix'
let g:go_def_reuse_buffer = 1

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview
let g:neocomplcache_enable_auto_select = 1 
let g:Neocomplachetag=1

"-----------------cscopex-----------------
set cscopequickfix=s-,c-,d-,i-,t-,e-
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
let g:cscope_silent = 1
let g:cscope_interested_files = '\.c$\|\.cpp$\|\.h$\|\.hpp$\|\.cc$\|\.java$\|\.go'
let g:cscope_auto_update = 1
"find symbol
au filetype c,cpp,go,sh nnoremap <leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>
"find definition
au filetype c,cpp,go,sh nnoremap <leader>fd :cs find g <C-R>=expand("<cword>")<CR><CR>
"find who has called me
au filetype c,cpp,go,sh nnoremap <leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>
"find this string
au filetype c,cpp,go,sh nnoremap <leader>ft :cs find t <C-R>=expand("<cword>")<CR><CR>
"find this egrep pattern
au filetype c,cpp,go,sh nnoremap <leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>
"find this file 
au filetype c,cpp,go,sh nnoremap <leader>ff :cs find f <C-R>=expand("<cfile>")<CR><CR>
"find out which files had included this
au filetype c,cpp,go,sh nnoremap <leader>fi :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
"show match window or not
au filetype c,cpp,go,sh nnoremap <silent> < :call QuickFixToggle()<cr>
"next result,previous result
au filetype c,cpp,java,go,sh nnoremap <silent> <c-u> :call QuickFixNext()<cr>
au filetype c,cpp,java,go,sh nnoremap <silent> <c-d> :call QuickFixPrevious()<cr>

"""-----------------ycm-----------------
""set completeopt-=preview
""au bufread,bufnewfile *.c let g:ycm_global_ycm_extra_conf = '~/.vim/ycm/c/.ycm_extra_conf.py'
""au bufread,bufnewfile *.h,*.hpp,*.cpp,*.cc,*.cxx,*.java let g:ycm_global_ycm_extra_conf = '~/.vim/ycm/cpp/.ycm_extra_conf.py'
""if filereadable('.ycm_extra_conf.py')
""    let g:ycm_global_ycm_extra_conf = './.ycm_extra_conf.py'
""endif
""let g:ycm_confirm_extra_conf = 0
""let g:ycm_collect_identifiers_from_tags_files = 1
""let g:ycm_collect_identifiers_from_comments_and_strings = 0
""let g:ycm_min_num_of_chars_for_completion = 2
""" let g:ycm_cache_omnifunc = 0
""let g:ycm_seed_identifiers_with_syntax = 1
""let g:ycm_complete_in_comments = 1
""let g:ycm_complete_in_strings = 1
""let g:ycm_filetype_blacklist = { 'tagbar' : 1,'nerdtree' : 1, }
""let g:ycm_semantic_triggers = { 'c' : ['->', '.'], 'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s', 're!\[.*\]\s'], 'ocaml' : ['.', '#'], 'cpp,objcpp' : ['->', '.', '::'],  'perl' : ['->'], 'php' : ['->', '::'], 'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'], 'ruby' : ['.', '::'], 'erlang' : [':'],}
""let g:ycm_error_symbol = '!!'
""let g:ycm_warning_symbol = '??'
""let g:ycm_always_populate_location_list = 1
""let g:ycm_open_loclist_on_ycm_diags = 0
""let g:ycm_enable_diagnostic_signs = 1
""let g:ycm_enable_diagnostic_highlighting = 1
""let g:ycm_register_as_syntastic_checker = 1
""let g:Show_diagnostics_ui = 1
""let g:ycm_goto_buffer_command = 'same-buffer'
""let g:ycm_filetype_whitelist = { '*': 1 }
""" let g:ycm_key_list_select_completion = ['<c-tab>', '<Down>']
""" let g:ycm_key_list_previous_completion = ['<c-s-tab>', '<Up>']
"""let g:ycm_key_list_select_completion = ['<Down>']
"""let g:ycm_key_list_previous_completion = ['<Up>']
""" let g:SuperTabDefaultCompletionType = '<c-tab>'
"""let g:ycm_key_invoke_completion = '<C-Space>'
""set pumheight=20
""" 只能是 #include 或已打开的文件
""au filetype c,cpp,objc,objcpp,cs,go,sh nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<cr>


" Call out the .h file 
"au filetype c,cpp nnoremap <leader>aa :A<cr>

" Other definitions
au filetype c,cpp,go nmap <leader>tt :call AddTitle()<cr>
au filetype java,javascript nmap <leader>tt :call AddTitle()<cr>
au filetype sh nmap <leader>tt :call AddShellTitle()<cr>
au filetype vim nmap <leader>tt :call AddVimTitle()<cr>
"au filetype lua nmap <leader>tt :call AddLuaTitle()<cr>

