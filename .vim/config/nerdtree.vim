let g:NERDTreeWinSize=30
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
map <Leader>f :NERDTreeToggle<CR>
let NERDSpaceDelims=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '\.o$']
"autocmd VimEnter * if &filetype !=# '.md' | NERDTree | endif

" let g:nerdtree_tabs_open_on_console_startup=1
map <Leader>f :NERDTreeTabsToggle<CR>

" some useful tips
" 1. type m show NERDTree menu
