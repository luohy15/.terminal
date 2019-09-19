let g:NERDTreeWinSize=30
autocmd VimEnter *.cc *.h *.cpp NERDTree
autocmd VimEnter *.cc *.h *.cpp wincmd p
map <Leader>n :NERDTreeToggle<CR>
let NERDSpaceDelims=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.git']
" let g:nerdtree_tabs_open_on_console_startup=1
map <Leader>n :NERDTreeTabsToggle<CR>
