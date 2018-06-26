" ycm
" let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" let g:ycm_key_invoke_completion='<C-h>'
" if !exists('g:ycm_semantic_triggers')
" let g:ycm_semantic_triggers = {}
" endif
" let g:ycm_semantic_triggers.tex = [
    " \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
    " \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
    " \ 're!\\hyperref\[[^]]*',
    " \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
    " \ 're!\\(include(only)?|input){[^}]*',
    " \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
    " \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
    " \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
    " \ 're!\\usepackage(\s*\[[^]]*\])?\s*\{[^}]*',
    " \ 're!\\documentclass(\s*\[[^]]*\])?\s*\{[^}]*',
    " \ ]
" let g:ycm_autoclose_preview_window_after_completion=1
" let g:ycm_complete_in_comments=1
" let g:ycm_confirm_extra_conf=0
" nnoremap <leader>fi :YcmCompleter FixIt<CR>
