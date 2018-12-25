" echo ">^.^<"
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Specify a directory for plugins
source ~/.vim/config/basic.vim
call plug#begin('~/.vim/plugged')

" basic
" Plug 'ajh17/vimcompletesme'
Plug 'christoomey/vim-tmux-navigator'
if v:version >= 801
    Plug 'Valloric/YouCompleteMe'
    Plug 'scrooloose/syntastic'
    Plug 'tpope/vim-fugitive'
    Plug '/usr/local/opt/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
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
    Plug 'easymotion/vim-easymotion'
    Plug 'terryma/vim-expand-region'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'altercation/vim-colors-solarized'
    Plug 'mkitt/tabline.vim'
    Plug 'octol/vim-cpp-enhanced-highlight'
else
    Plug 'kien/ctrlp.vim'
    Plug 'rking/ag.vim'
endif
" Plug 'fholgado/minibufexpl.vim'
Plug 'scrooloose/nerdcommenter'
" Plug 'skywind3000/asyncrun.vim'
" Plug 'jiangmiao/auto-pairs'
" Plug 'alpertuna/vim-header'
" Plug 'godlygeek/tabular'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

" search
" Plug 'mileszs/ack.vim'
" Plug 'dyng/ctrlsf.vim'

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
" Plug 'itchyny/lightline.vim'
" Plug 'powerline/powerline'
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
source ~/.vim/config/easymotion.vim
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
source ~/.vim/config/status.vim
" source ~/.vim/config/lightline.vim
" source ~/.vim/config/powerline.vim

call plug#end()
