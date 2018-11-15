" echo ">^.^<"
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Specify a directory for plugins
let s:uname = system("uname -s | tr -d '\n'")
let s:distro = system("cat /etc/os-release | grep ^ID= | cut -d '=' -f2 | tr -d '\n\"'")
source ~/.vim/config/basic.vim
source ~/.vim/config/leader.vim
call plug#begin('~/.vim/plugged')

" basic
" Plug 'ajh17/vimcompletesme'
Plug 'christoomey/vim-tmux-navigator'
if v:version >= 801
    Plug 'Valloric/YouCompleteMe'
endif
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
if (executable('fzf') && s:distro != "centos")
    Plug '/usr/local/opt/fzf'
    Plug 'junegunn/fzf.vim'
else
    Plug 'kien/ctrlp.vim'
endif
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --no-messages "" .'
endif
let g:fzf_command_prefix = 'Fzf'
if (executable('fzf') && s:distro != "centos")
  nnoremap <c-p> :FzfFiles<cr>
  nnoremap <c-t> :FzfTags<cr>
  nnoremap <leader>j :call fzf#vim#tags("'".expand('<cword>'))<cr>
else
  nnoremap <leader>v :CtrlP<Space><cr>
endif
" Plug 'easymotion/vim-easymotion'
" Plug 'rking/ag.vim'
" Plug 'mileszs/ack.vim'
" Plug 'dyng/ctrlsf.vim'

" go
" Plug 'fatih/vim-go'

" cpp
" Plug 'vim-scripts/OmniCppComplete'
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
" Plug 'klen/python-mode'
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
" Plug 'lervag/vimtex'
" Plug 'suan/vim-instant-markdown'
" Plug 'vim-scripts/VimIM'
" Plug 'rykka/riv.vim'
" Plug 'rykka/instantrst'
" Plug 'vim-scripts/DrawIt'
" Plug 'piec/man.vim'
" Plug 'idxuanjun/bx_vimim_dict'
" Plug 'vim-scripts/YankRing.vim'

" eye candy
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" if (s:uname == "s5-371" || s:uname == "vmware")
    " Plug 'ryanoasis/vim-devicons'
" endif
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
source ~/.vim/config/solarized.vim
source ~/.vim/config/ctrlp.vim
source ~/.vim/config/translate.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/tagbar.vim
" source ~/.vim/config/ycm.vim
" source ~/.vim/config/goyo.vim
" source ~/.vim/config/cpp-hightlight.vim
" source ~/.vim/config/snip.vim
" source ~/.vim/config/markdown.vim
" source ~/.vim/config/vimwiki.vim
" source ~/.vim/config/goto.vim
" source ~/.vim/config/powerline-detect.vim
" source ~/.vim/config/rainbow.vim
" source ~/.vim/config/zwc.vim
" source ~/.vim/config/indent-guides.vim
" source ~/.vim/config/replace.vim
source ~/.vim/config/visual-star.vim
call plug#end()

" basic
" set viminfo
" nmap <space> :
" vmap <space> :
" cmap w!! w !sudo tee > /dev/null %
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'
set wildmenu
set wildmode=full
set history=2000
set ruler
" set laststatus=2
" set cursorline
" set cursorcolumn
set backspace=indent,eol,start
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
set ttymouse=xterm2
set clipboard=unnamedplus
if (s:uname == "Darwin")
    set clipboard=unnamed
endif
set pastetoggle=<F5>

" search
set hls
set incsearch
" set nofoldenable
" set nrformats=
" set undofile
" set undodir=~/.dotfiles/
" inoremap {<CR> {<CR>}<ESC>O
" inoremap <C-u> <esc>gUiwea

" split navigations
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" nnoremap <C-f> <C-w>gf
" nnoremap gp <C-^>

" navigations
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" split resize
" nnoremap <Leader>j <C-w>5+
" nnoremap <Leader>k <C-w>5-
nnoremap <Leader>h <C-w>5<
nnoremap <Leader>l <C-w>5>

" encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1

" snipmate
" imap <C-j> <ESC>a<Plug>snipMateNextOrTrigger
" smap <C-j> <Plug>snipMateNextOrTrigger

" ttimeoutlen
" set notimeout
" set ttimeout
" set timeoutlen=2000
