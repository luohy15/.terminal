function! Translate()
    let expl=system('ydcv ' . expand("<cword>"))
    windo if expand("%")=="dict-tmp" |q!|endif
botright 60vsp dict-tmp
setlocal buftype=nofile bufhidden=hide noswapfile
1s/^/\=expl/
execute "1"
wincmd p
endfunction
function! CloseDict()
    windo if expand("%")=="dict-tmp" |q!|endif
wincmd p
endfunction
