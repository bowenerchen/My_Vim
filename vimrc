source ~/.vim/base.vim

source ~/.vim/bundles.vim

source ~/.vim/ui.vim

source ~/.vim/c_cpp.vim

source ~/.vim/golang.vim

source ~/.vim/python.vim

source ~/.vim/other_language.vim



" Tagbar
" let g:tagbar_left=1
" let g:tagbar_width=30
" let g:tagbar_autofocus = 1
" let g:tagbar_sort = 0
" let g:tagbar_compact = 1
" " tag for coffee
" if executable('coffeetags')
"   let g:tagbar_type_coffee = {
"         \ 'ctagsbin' : 'coffeetags',
"         \ 'ctagsargs' : '',
"         \ 'kinds' : [
"         \ 'f:functions',
"         \ 'o:object',
"         \ ],
"         \ 'sro' : ".",
"         \ 'kind2scope' : {
"         \ 'f' : 'object',
"         \ 'o' : 'object',
"         \ }
"         \ }
" 
"   let g:tagbar_type_markdown = {
"     \ 'ctagstype' : 'markdown',
"     \ 'sort' : 0,
"     \ 'kinds' : [
"         \ 'h:sections'
"     \ ]
"     \ }
" endif

" Nerd Tree
" let NERDChristmasTree=0
" let NERDTreeWinSize=30
" let NERDTreeChDirMode=2
" let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
" let NERDTreeShowBookmarks=1
" let NERDTreeWinPos = "right"

" nerdcommenter
" let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
" let NERDCompactSexyComs=1

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
"let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"set completeopt-=preview

"imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
"smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
"imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
"smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

