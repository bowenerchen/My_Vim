"Plugin 'asins/vim-dict'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'jiangmiao/auto-pairs'
"Plugin 'Chiel92/vim-autoformat'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'vim-scripts/DrawIt'
"Plugin 'artur-shaik/vim-javacomplete2'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-lua-ftplugin'
"Plugin 'pangloss/vim-javascript'
"Plugin 'tbastos/vim-lua'
"Plugin 'adwpc/cscopex'
"Plugin 'vim-scripts/a.vim'
"Plugin 'vim-scripts/nginx.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'mattn/emmet-vim'
"Plugin 'Raimondi/delimitMate'
"Plugin 'ervandew/supertab'

"Plugin 'rogpeppe/godef'
"Plugin 'jstemmer/gotags'
"Plugin 'fatih/motion'
"Plugin 'fatih/gomodifytags'
"Plugin 'josharian/impl'

"set cursorline                                 " high light current line
"set cursorcolumn                               " high light current column
"set guioptions-=T                               " No tools shown
"set guioptions-=m                               " No Menu Shown
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%] " My Status line format
"set vb t_vb=                                    " Close bell voice
"set noeb                                        " Close Input Error Voice
"set scrolloff=3                                " 5 lines form Top or Buttom
"set clipboard=unnamed                          \" "p\" can paste system buffer
"" GVim Max Window
""if has("gui_running")
""  " GUI is running or is about to start.
""  " Maximize gvim window (for an alternative on Windows, see simalt below).
""  set lines=40 columns=120
""  colorscheme molokai_dark
""  "colorscheme torte
""else
"  " This is console Vim.
"  if exists("+lines")
"    set lines=50
"  endif
"  if exists("+columns")
"    set columns=100
"  endif
"  Theme /usr/share/vim/vim74/colors
"  colorscheme desert
"  colorscheme default
"  colorscheme koehler
"  colorscheme delek
""endif

"" Setting for Split windows
""set fillchars=vert:\ ,stl:\ ,stlnc:\  

" Set cursorline colors 
"highlight Cursor ctermfg=NONE guifg=NONE ctermbg=DarkGrey guibg=Gray 
""if has('multi_byte_ime')
""        highlight Cursor guifg=NONE guibg=Green
""        highlight CursorIM guifg=NONE guibg=Purple
""endif


""au BufRead,BufNewFile *.conf setfiletype nginx

" highlight txt files
""au BufRead,BufNewFile *  setfiletype txt

" w!! to sudo & write a file
""cmap w!! %!sudo tee >/dev/null %


" automatically completed Brackets
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {<CR>}<Esc>O
"autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
"inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap } <c-r>=CloseBracket()<CR>
"inoremap \" <c-r>=QuoteDelim('"')<CR>
"inoremap ' <c-r>=QuoteDelim("'")<CR>


" -------------------------------------------------------------------------------------------------
" Add C/C++/Golang Title
"function AddNewTitle()
"    call append(0,"/*-----------------------------------------------------------------------------")
"    call append(1,"# Author:        name - name@company.com")
"    call append(2,"# Department:    department")
"    call append(3,"# Created:       ".strftime("%Y-%m-%d %H:%M:%S"))
"    call append(4,"# LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
"    call append(5,"# Filename:      ".expand("%:t"))
"    call append(6,"# Description:   ")
"    call append(7,"-----------------------------------------------------------------------------*/")
"    call append(8,"")
"    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
"endf
"
"function UpdateTitle()
"    normal m'
"    call setline(5,"# LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
"    normal ''
"    normal mk
"    call setline(6,"# Filename:      ".expand("%:t"))
"    execute "noh"
"    normal 'k
"    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
"endfunction
"
""for c/c++ golang and some language to add a info header
"function AddTitle()
"    let n = 1
"    "默认为添加
"    while n < 10
"        let line = getline(n)
"        if line =~ '^\#\s*\S*LastModified:\S*.*$'
"            call UpdateTitle()
"            return
"        endif
"        let n = n + 1
"    endwhile
"    call AddNewTitle()
"endfunction
"
"" -------------------------------------------------------------------------------------------------
"
""for shell script to add a new info header
"function AddNewShellTitle()
"    call append(0,"#-----------------------------------------------------------------------------")
"    call append(1,"# Author:        name - name@company.com")
"    call append(2,"# Departments:   department")
"    call append(3,"# Created:       ".strftime("%Y-%m-%d %H:%M:%S"))
"    call append(4,"# LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
"    call append(5,"# Filename:      ".expand("%:t"))
"    call append(6,"# Description:   ")
"    call append(7,"#-----------------------------------------------------------------------------")
"    call append(8,"")
"    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
"endf
"
""for shell script to add header
"function AddShellTitle()
"    let n = 1
"    "默认为添加
"    while n < 10
"        let line = getline(n)
"        if line =~ '^\#\s*\S*LastModified:\S*.*$'
"            call UpdateTitle()
"            return
"        endif
"        let n = n + 1
"    endwhile
"    call AddNewShellTitle()
"endfunction
"
"" -------------------------------------------------------------------------------------------------
"
""for lua language to add a info header
"function AddNewLuaTitle()
"    call append(0,"--[[-----------------------------------------------------------------------------")
"    call append(1,"# Author:        name - name@company.com")
"    call append(2,"# Departments:   department")
"    call append(3,"# Created:       ".strftime("%Y-%m-%d %H:%M:%S"))
"    call append(4,"# LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
"    call append(5,"# Filename:      ".expand("%:t"))
"    call append(6,"# Description:   ")
"    call append(7,"-------------------------------------------------------------------------------]]")
"    call append(8,"")
"    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
"endf
"
"function UpdateLuaTitle()
"    normal m'
"    call setline(5,"# LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
"    normal ''
"    normal mk
"    call setline(6,"# Filename:      ".expand("%:t"))
"    execute "noh"
"    normal 'k
"    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
"endfunction
"
"" for lua language to add a info header
"function AddLuaTitle()
"    let n = 1
"    while n < 10
"        let line = getline(n)
"        if line =~ '^\#\s*\S*LastModified:\S*.*$'
"            call UpdateLuaTitle()
"            return
"        endif
"        let n = n + 1
"    endwhile
"    call AddNewLuaTitle()
"endfunction
"" -------------------------------------------------------------------------------------------------
""for vim files to add a info header
"function AddNewVimTitle()
"    call append(0,"\"-----------------------------------------------------------------------------")
"    call append(1,"\" Author:        name - name@company.com")
"    call append(2,"\" Departments:   department")
"    call append(3,"\" Created:       ".strftime("%Y-%m-%d %H:%M:%S"))
"    call append(4,"\" LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
"    call append(5,"\" Filename:      ".expand("%:t"))
"    call append(6,"\" Description:   ")
"    call append(7,"\"-----------------------------------------------------------------------------")
"    call append(8,"")
"    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
"endf
"
"function UpdateVimTitle()
"    normal m'
"    call setline(5,"\" LastModified:  ".strftime("%Y-%m-%d %H:%M:%S"))
"    normal ''
"    normal mk
"    call setline(6,"\" Filename:      ".expand("%:t"))
"    execute "noh"
"    normal 'k
"    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
"endfunction
"
"" for Vim config files to add a info header
"function AddVimTitle()
"    let n = 1
"    while n < 10
"        let line = getline(n)
"        if line =~ '^\"\s*\S*LastModified:\S*.*$'
"            call UpdateVimTitle()
"            return
"        endif
"        let n = n + 1
"    endwhile
"    call AddNewVimTitle()
"endfunction
"-------------------------------------------------------------------------------------------------







" nerdcommenter
""let g:NERDSpaceDelims = 1
""nnoremap <silent> // :call NERDComment(0,"toggle")<CR>
""vnoremap <silent> // :call NERDComment(0,"toggle")<CR>



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
"au filetype c,cpp,go nmap <leader>tt :call AddTitle()<cr>
"au filetype java,javascript nmap <leader>tt :call AddTitle()<cr>
"au filetype sh nmap <leader>tt :call AddShellTitle()<cr>
"au filetype vim nmap <leader>tt :call AddVimTitle()<cr>
"au filetype lua nmap <leader>tt :call AddLuaTitle()<cr>




" set fold/unfold all key
""function ForceFoldmethodIndent()
""	if &foldenable
""		se foldmethod=indent
""	endif
""endfunction

