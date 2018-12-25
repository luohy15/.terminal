let mapleader=" "
set number

" file
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>
nmap <Leader>s :source ~/.vimrc<CR>
cmap w!! w !sudo tee > /dev/null %

" navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap K :tabnext<CR>
nnoremap J :tabprev<CR>
noremap <Leader>t :tabnew<CR>
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 :tablast<CR>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <Leader>h <C-w>5<
nnoremap <Leader>l <C-w>5>
nnoremap <Leader>j <C-w>5+
nnoremap <Leader>k <C-w>5-

" misc
set ruler
set hls
set incsearch
set wildmenu
set wildmode=full
set backspace=indent,eol,start
set autoindent
set tabstop=4 " >> on normal mode
set softtabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set nobackup
set nowritebackup
set history=2000
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
set showmatch
