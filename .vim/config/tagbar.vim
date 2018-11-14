" tagbar
" autocmd BufReadPost * call tagbar#autoopen()
" autocmd VimEnter *.c nested :TagbarOpen
let g:tagbar_width=30
let g:tagbar_sort=0
"let g:tagbar_vertical=10
"let g:tagbar_left=1
"set statusline+=%{tagbar#currenttag('[%s]\ ','')}
