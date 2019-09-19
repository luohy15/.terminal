" " zwc
" function! Zwc() range
"   " send selected lines to system command *zwc* and print the output
"   let select_beg_line = getpos("'<")[1]
"   let select_end_line = getpos("'>")[1]
"   let lines = getline(select_beg_line, select_end_line)
"   let input = join(lines, "\n") . "\n"
"   let output = system("zwc", input)
"   echom substitute(output, '\v(^\_s+)|(\_s+$)', '', 'g')
" endfunction
" 
" vnoremap zwc :call Zwc()<CR>

