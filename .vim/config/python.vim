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
