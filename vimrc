" echo ">^.^<"
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Specify a directory for plugins
source ~/.vim/config/basic.vim
source ~/.vim/config/leader.vim
source ~/.vim/config/powerline.vim
call plug#begin('~/.vim/plugged')

" basic
" Plug 'ajh17/vimcompletesme'
Plug 'christoomey/vim-tmux-navigator'
if v:version >= 801
    Plug 'Valloric/YouCompleteMe'
    Plug 'tpope/vim-fugitive'
    Plug '/usr/local/opt/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'raimondi/delimitmate'
    Plug 'majutsushi/tagbar'
    Plug 'junegunn/vim-easy-align'
    Plug 'mattn/emmet-vim'
    Plug 'fatih/vim-go'
    Plug 'wakatime/vim-wakatime'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'kien/rainbow_parentheses.vim'
    Plug 'tpope/vim-surround'
else
    Plug 'kien/ctrlp.vim'
endif
" Plug 'scrooloose/syntastic'
" Plug 'fholgado/minibufexpl.vim'
Plug 'scrooloose/nerdcommenter'
" Plug 'skywind3000/asyncrun.vim'
" Plug 'jiangmiao/auto-pairs'
" Plug 'alpertuna/vim-header'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'godlygeek/tabular'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

" search
" Plug 'easymotion/vim-easymotion'
Plug 'rking/ag.vim'
" Plug 'mileszs/ack.vim'
" Plug 'dyng/ctrlsf.vim'

" go

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
" Plug 'vim-scripts/pythoncomplete'
" Plug 'tmhedberg/simpylfold'
" Plug 'vim-scripts/indentpython.vim'
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
" Plug 'ryanoasis/vim-devicons'
" Plug 'yuttie/comfortable-motion.vim'
" Plug 'edkolev/tmuxline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
" Plug 'powerline/powerline'
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'nathanaelkane/vim-indent-guides'

" detect
source ~/.vim/config/python.vim
source ~/.vim/config/complete.vim
source ~/.vim/config/solarized.vim
source ~/.vim/config/ctrlp.vim
source ~/.vim/config/translate.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/tagbar.vim
source ~/.vim/config/fzf.vim
source ~/.vim/config/goyo.vim
source ~/.vim/config/ycm.vim
" source ~/.vim/config/cpp-hightlight.vim
" source ~/.vim/config/snip.vim
" source ~/.vim/config/markdown.vim
" source ~/.vim/config/vimwiki.vim
" source ~/.vim/config/goto.vim
" source ~/.vim/config/zwc.vim
" source ~/.vim/config/indent-guides.vim
" source ~/.vim/config/replace.vim
source ~/.vim/config/rainbow.vim
source ~/.vim/config/visual-star.vim
source ~/.vim/config/clip.vim
source ~/.vim/config/align.vim
call plug#end()
