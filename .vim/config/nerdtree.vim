" nerd tree
" let g:NERDTreeWinSize=20
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
map <Leader>f :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.o$']
"autocmd VimEnter * if &filetype !=# '.md' | NERDTree | endif

" tree tab
" let g:nerdtree_tabs_open_on_console_startup=1
map <Leader>f :NERDTreeTabsToggle<CR>

" some useful tips
" 1. type m show NERDTree menu
