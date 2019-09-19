if executable('rg')
    let $FZF_DEFAULT_COMMAND = 'rg --files --no-messages "" . --hidden --ignore-file .ignore'
endif
let g:fzf_command_prefix = 'Fzf'
nnoremap <c-p> :FzfFiles<cr>
nnoremap <c-b> :FzfBuffers<cr>
nnoremap <c-g> :FzfAg<cr>
nnoremap <c-t> :call fzf#vim#tags("'".expand('<cword>'))<cr>
