"-----------airline--------------
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
nnoremap <silent> <c-tab> :bn<cr>
nnoremap <silent> <s-tab> :bp<cr>
" close buffer or buffers,command :%bd will close all buffers
nnoremap <silent> <C-g> :bd<cr>

"-----------NERDTree--------------
let g:NERDTreeWinPos = 'left'
let g:NERDTreeWinSize = 20
let g:NERDTreeShowLineNumbers = 0
nnoremap <silent> <leader>ll :NERDTreeToggle<cr><c-w>p

"------------nerdcommenter------------
let g:NERDSpaceDelims = 1
nnoremap <silent> // :call NERDComment(0,"toggle")<CR>
vnoremap <silent> // :call NERDComment(0,"toggle")<CR>

"--------------tagbar------------
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

"-----------------SirVer/ultisnips----------------------
let g:UltiSnipsExpandTrigger = '<tab>'
" let g:UltiSnipsJumpForwardTrigger = '<c-j>'
" let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsListSnippets = '<c-l>'
let g:UltiSnipsSnippetsDir = '~/.vim/snips'
let g:UltiSnipsSnippetDirectories = ['snips']
"nnoremap <leader>ue :UltiSnipsEdit<cr>

"-------------syntastic----------------
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

"-------------------javacomplete2------------
au filetype java setlocal omnifunc=javacomplete#Complete

"---------------------vim-lua-ftplugin---------
let g:lua_complete_omni = 1
" let g:lua_complete_dynamic = 1
" let g:lua_path = './?.lua;./lua/?.lua;./lualib/?.lua'
" let g:lua_path = './?.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua;/usr/local/lib/lua/5.1/?.lua;/usr/local/lib/lua/5.1/?/init.lua;/usr/share/lua/5.1/?.lua;/usr/share/lua/5.1/?/init.lua'

"-------------------vim-javascript------------
"let g:javascript_plugin_jsdoc = 1
"let g:javascript_plugin_ngdoc = 1
"let g:javascript_plugin_flow = 1
"let g:javascript_conceal_function       = 'ƒ'
"let g:javascript_conceal_null           = 'ø'
"let g:javascript_conceal_this           = '@'
"let g:javascript_conceal_return         = '⇚'
"let g:javascript_conceal_undefined      = '¿'
"let g:javascript_conceal_NaN            = 'ℕ'
"let g:javascript_conceal_prototype      = '¶'
"let g:javascript_conceal_static         = '•'
"let g:javascript_conceal_super          = 'Ω'
"let g:javascript_conceal_arrow_function = '⇒'
"let g:indentLine_enabled = 1
"let g:indentLine_char = '|'
"let g:indentLine_color_term = 239
"let g:indentLine_concealcursor = 'inc'
"set conceallevel=1
"let g:indentLine_conceallevel = 1
" au bufread,bufnewfile *.go set list lcs=tab:\|\

"------------vim-autoformat----------
noremap <leader>ff :Autoformat<cr>
" au bufwrite *.h,*.hpp,*.c,*.cpp,*.cc,*.java,*.lua :Autoformat

"---------------vim-go----------------
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

"--------------ycm------------------
"set completeopt-=preview
"au bufread,bufnewfile *.c let g:ycm_global_ycm_extra_conf = '~/.vim/ycm/c/.ycm_extra_conf.py'
"au bufread,bufnewfile *.h,*.hpp,*.cpp,*.cc,*.cxx,*.java let g:ycm_global_ycm_extra_conf = '~/.vim/ycm/cpp/.ycm_extra_conf.py'
"if filereadable('.ycm_extra_conf.py')
"    let g:ycm_global_ycm_extra_conf = './.ycm_extra_conf.py'
"endif
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
"let g:ycm_min_num_of_chars_for_completion = 2
"" let g:ycm_cache_omnifunc = 0
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_complete_in_comments = 1
"let g:ycm_complete_in_strings = 1
"let g:ycm_filetype_blacklist = { 'tagbar' : 1,'nerdtree' : 1, }
"let g:ycm_semantic_triggers = { 'c' : ['->', '.'], 'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s', 're!\[.*\]\s'], 'ocaml' : ['.', '#'], 'cpp,objcpp' : ['->', '.', '::'],  'perl' : ['->'], 'php' : ['->', '::'], 'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'], 'ruby' : ['.', '::'], 'erlang' : [':'],}
"let g:ycm_error_symbol = '!E'
"let g:ycm_warning_symbol = '?W'
"let g:ycm_always_populate_location_list = 1
"let g:ycm_open_loclist_on_ycm_diags = 0
"let g:ycm_enable_diagnostic_signs = 1
"let g:ycm_enable_diagnostic_highlighting = 1
"let g:ycm_register_as_syntastic_checker = 1
"let g:Show_diagnostics_ui = 1
"let g:ycm_goto_buffer_command = 'same-buffer'
"let g:ycm_filetype_whitelist = { '*': 1 }
" let g:ycm_key_list_select_completion = ['<c-tab>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<c-s-tab>', '<Up>']
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion = ['<Up>']
" let g:SuperTabDefaultCompletionType = '<c-tab>'
"let g:ycm_key_invoke_completion = '<C->'
"set pumheight=20
"set completeopt=longest,menu                                  " auto complete menu like ide"
"au InsertLeave * if pumvisible() == 0|pclose|endif           "close preview when leave insert mode
"inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
"inoremap <expr> <cr>       pumvisible() ? "\<C-y>" : "\<cr>"
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
"inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
"au filetype c,cpp,objc,objcpp,cs nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<cr>

"-------------------NeoComplCache--------------
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
"let g:cscope_preload_path = '.'
"let g:cscope_preload_path="/usr/include/"
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
"find which funcs were called by this function
"au filetype c,cpp,go,sh nnoremap <leader>fd :cs find d <C-R>=expand("<cword>")<CR><CR>
"show match window or not
au filetype c,cpp,go,sh nnoremap <silent> < :call QuickFixToggle()<cr>
"next result,previous result
au filetype c,cpp,java,go nnoremap <silent> <c-u> :call QuickFixNext()<cr>
au filetype c,cpp,java,go nnoremap <silent> <c-d> :call QuickFixPrevious()<cr>

" -----------------other--------------------
au filetype c,cpp,go,lua,java,javascript nmap <leader>tt :call AddTitle()<cr>
au filetype lua nmap <leader>tt :call AddLuaTitle()<cr>
au filetype c,cpp nnoremap <leader>aa :A<cr>
