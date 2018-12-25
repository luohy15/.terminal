" python
set foldmethod=indent
set foldlevel=99
au bufnewfile,bufread *.py
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set textwidth=79 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix
highlight badwhitespace ctermbg=red guibg=darkred
au bufread,bufnewfile *.py,*.pyw,*.c,*.cpp,*.h match badwhitespace /\s\+$/
nmap <F7> :%s/\s\+$//g<CR>
let python_highlight_all=1
Plug 'python-mode/python-mode'
Plug 'nvie/vim-flake8'
