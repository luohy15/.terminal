" sdcv
function! Translate()
    let expl=system('sdcv -n ' . expand("<cword>"))
    windo if expand("%")=="dict-tmp" |q!|endif
botright 30vsp dict-tmp
setlocal buftype=nofile bufhidden=hide noswapfile
1s/^/\=expl/
execute "1"
wincmd p
endfunction
function! CloseDict()
    windo if expand("%")=="dict-tmp" |q!|endif
wincmd p
endfunction
nmap <Leader>oy :call Translate()<CR>
nmap <Leader>oq :call CloseDict()<CR>
