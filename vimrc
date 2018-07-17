if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Specify a directory for plugins
let mapleader=" "
call plug#begin('~/.vim/plugged')

" basic
" Plug 'ajh17/vimcompletesme'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Valloric/YouCompleteMe'
" Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" Plug 'fholgado/minibufexpl.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
" Plug 'skywind3000/asyncrun.vim'
Plug 'raimondi/delimitmate'
" Plug 'jiangmiao/auto-pairs'
" Plug 'alpertuna/vim-header'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'godlygeek/tabular'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

" search
Plug 'kien/ctrlp.vim'
" Plug 'easymotion/vim-easymotion'
" Plug 'rking/ag.vim'
" Plug 'junegunn/fzf'
Plug 'mileszs/ack.vim'
" Plug 'dyng/ctrlsf.vim'
 
" go
Plug 'fatih/vim-go'

" cpp
Plug 'vim-scripts/OmniCppComplete'
" Plug 'xuhdev/singlecompile'
" Plug 'drmikehenry/vim-headerguard'
" Plug 'sirver/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'derekwyatt/vim-protodef'
" Plug 'derekwyatt/vim-fswitch'
" Plug 'kshenoy/vim-signature'
" Plug 'chiel92/vim-autoformat'
" Plug 'brookhong/cscope.vim'

" other language
" Plug 'vim-scripts/pythoncomplete'
" Plug 'mattn/emmet-vim'
" Plug 'tmhedberg/simpylfold'
" Plug 'vim-scripts/indentpython.vim'
" Plug 'nvie/vim-flake8'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-surround'
" Plug 'pangloss/vim-javascript'
" Plug 'xuyuanp/nerdtree-git-plugin'
" Plug 'ervandew/eclim'
" Plug 'shirk/vim-gas'

" doc
" Plug 'CodeFalling/fcitx-vim-osx'
" Plug 'humiaozuzu/fcitx-status'
" Plug 'vimwiki/vimwiki'
Plug 'lervag/vimtex'
" Plug 'suan/vim-instant-markdown'
" Plug 'vim-scripts/VimIM'
" Plug 'rykka/riv.vim'
" Plug 'rykka/instantrst'
" Plug 'vim-scripts/DrawIt'
" Plug 'piec/man.vim'
" Plug 'idxuanjun/bx_vimim_dict'
" Plug 'vim-scripts/YankRing.vim'

" eye candy
let s:uname = system("uname -n | tr -d '\n'")
if (s:uname == "s5-371" || s:uname == "vmware")
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
endif
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'yuttie/comfortable-motion.vim'
" Plug 'edkolev/tmuxline.vim'
" Plug 'powerline/powerline'
" Plug 'altercation/vim-colors-solarized'
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'

" detect
source ~/.vim/config/complete.vim
" source ~/.vim/config/sdcv.vim
source ~/.vim/config/tagbar.vim
source ~/.vim/config/nerdtree.vim
" source ~/.vim/config/ycm.vim
" source ~/.vim/config/goyo.vim
" source ~/.vim/config/cpp-hightlight.vim
" source ~/.vim/config/snip.vim
" source ~/.vim/config/markdown.vim
source ~/.vim/config/vimwiki.vim
" source ~/.vim/config/goto.vim
" source ~/.vim/config/powerline-detect.vim
" source ~/.vim/config/rainbow.vim
" source ~/.vim/config/zwc.vim
" source ~/.vim/config/indent-guides.vim
" source ~/.vim/config/replace.vim
call plug#end()

" basic
" set viminfo
" nmap <space> :
" vmap <space> :
" cmap w!! w !sudo tee > /dev/null %
set wildmenu
set wildmode=full
" set history=200
set number
set ruler
" set laststatus=2
" set cursorline
" set cursorcolumn
set lazyredraw
set tabstop=4 " >> on normal mode
set shiftwidth=4 " tab on insert mode
set softtabstop=4 " treat 4 spaces as tab
set expandtab
" set smartindent
" set cindent
" set autoindent
set noswapfile
set nobackup
set nowritebackup
" set exrc
" set secure
" set foldmethod=syntax
set mouse=nicr
set clipboard=unnamedplus
" set nofoldenable
" set nrformats=
" set undofile
" set undodir=~/.dotfiles/
" inoremap {<CR> {<CR>}<ESC>O
" inoremap <C-u> <esc>gUiwea

" Leader map
" noremap \ ,
nmap <Leader>s :source ~/.vimrc<CR>
nmap <Leader>y :%y+<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
vmap <C-c> "+y
" nmap <Leader>Q :qa!<CR>

" vimium like tabs
nnoremap K :tabnext<CR>
nnoremap J :tabprev<CR>
nnoremap t :tabnew<CR>:CtrlP<CR>
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 :tablast<CR>
" nnoremap <C-w>  :tabclose<CR>


" split navigations
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" nnoremap <C-f> <C-w>gf
" nnoremap gp <C-^>

" split resize
" nnoremap <Leader>j <C-w>10+
" nnoremap <Leader>k <C-w>10-
" nnoremap <Leader>h <C-w>10<
" nnoremap <Leader>l <C-w>10>

" encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1

" color scheme
set hls
set cursorline
set nocursorline
syntax enable
syntax on
set background=dark
" let g:solarized_termtrans=1
colorscheme solarized
set t_co=256
let g:rehash256=1
" let g:molokai_original = 1
" colorscheme molokai
" let g:zenburn_transparent=1
" colorscheme zenburn

" snipmate
" imap <C-j> <ESC>a<Plug>snipMateNextOrTrigger
" smap <C-j> <Plug>snipMateNextOrTrigger

" ici
" nmap <Leader>t :!ici <C-R><C-W><CR>

" ttimeoutlen
" set notimeout
" set ttimeout
" set timeoutlen=2000

" python
" set foldmethod=indent
" set foldlevel=99
" au bufnewfile,bufread *.py
" \ set tabstop=4 |
" \ set softtabstop=4 |
" \ set shiftwidth=4 |
" \ set textwidth=79 |
" \ set expandtab |
" \ set autoindent |
" \ set fileformat=unix
" au bufnewfile,bufread *.js, *.html, *.css
" \ set tabstop=2 |
" \ set softtabstop=2 |
" \ set shiftwidth=2
" highlight badwhitespace ctermbg=red guibg=darkred
" au bufread,bufnewfile *.py,*.pyw,*.c,*.cpp,*.h match badwhitespace /\s\+$/
" nmap <F7> :%s/\s\+$//g<CR>
" let python_highlight_all=1


" emmet
" let g:user_emmet_Leader_key='<C-e>'

" term
" set t_ut=

" test
" autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()
" let g:vimtex_index_split_pos = 'full'
" let g:vimtex_compiler_latexmk = {'callback' : 0}
" " make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" for windows
" au GUIEnter * simalt ~x
" let g:NERDTreeDirArrowExpandable='?'
" let g:NERDTreeDirArrowCollapsible='?'
" set guifont=Monaco:h18
" set guioptions-=m
" set guioptions-=T
" set guioptions-=r
" set guioptions-=L
" let g:Powerline_symbols='fancy'


" Fn maps
" nnoremap <F8> :read !python ~/blog/build_tags/extract_tags_idfpath.py % <CR>
" nnoremap <Leader>pi :PlugInstall<CR>
set pastetoggle=<F5>
" map <F3> <Plug>VimwikiToggleListItem
" map <F4> <Plug>vimtex-compile
" nnoremap <C-S-F12> :NERDTreeToggle<CR>:TagbarToggle<CR>
" nmap <silent> <Leader>fs :FSHere<CR>
" nnoremap <Leader>sf :CtrlSF<CR>
" nmap <Leader>b :!rm -rf main<CR>:wa<CR>:make<CR>:cw<CR><CR>:!./main<CR>
" nmap <Leader>r :!g++ -o a % && :!./a<CR>
" nnoremap <Leader>pf :CtrlP<CR>
" nmap <Leader>s :AsyncRun gcc -o %<.s % -S -m32<CR>
" nmap <Leader>a :AsyncRun as -o %<.o % --32<CR>
" nmap <Leader>l :AsyncRun ld -o %< %<.o -m elf_i386 && ./%<<CR>
" nmap <Leader>f :copen<CR>
" nmap <Leader>b :SCCompile<cr>
" nmap <Leader>r :SCCompileRun<cr>
" nnoremap <Leader>p :PlugInstall<CR>
" let g:multi_cursor_next_key='<S-n>'
" let g:multi_cursor_skip_key='<S-k>'
" let g:disable_protodef_sorting=1
" noremap <F4> :Autoformat<CR>
" let g:vimim_shuangpin='flypy'
" let g:vimim_cloud=-1
" let g:vimim_punctuation=-1
" let g:header_auto_add_header = 0
" let g:header_field_author = 'roy velvet'
" let g:header_field_author_email = 'luohycs@gmail.com'
" map <Leader>hi :AddHeader<CR>
" map <Leader>ha :HeaderguardAdd<CR>
" let g:disable_protodef_sorting=1
" let g:ctrlsf_ackprg = 'ack'
" nnoremap <Leader>bn :MBEbn<CR>
" nnoremap <Leader>bp :MBEbp<CR>
let NERDSpaceDelims=1
" let g:miniBufExplVSplit = 20
" let g:tmuxline_theme = 'zenburn'
filetype plugin on
" filetype on
" set omnifunc=syntaxcomplete#Complete
" function! Fcitx2en()
" let input_status = system('fcitx-remote')
" if input_status == 2
" let b:inputtoggle = 1
" call system('fcitx-remote -c')
" endif
" endfunction
" function! Fcitx2zh()
" try
" if b:inputtoggle == 1
" call system('fcitx-remote -o')
" let b:inputtoggle = 0
" endif
" catch /inputtoggle/
" let b:inputtoggle = 0
" endtry
" endfunction
" au InsertLeave * call Fcitx2en()
" au InsertEnter * call Fcitx2zh()
let g:vimtex_compiler_latexmk = {'callback' : 0}
let delimitMate_expand_cr=1
let g:airline_solarized_bg='dark'
let g:ctrlp_show_hidden = 1
let g:go_doc_keywordprg_enabled = 0
