set noshowmode
set statusline=

set statusline+=\[%{mode()}\]                " current mode
set statusline+=\                            " blank space
set statusline+=%y                           " filetype
set statusline+=\                            " blank space
set statusline+=%m                           " modified flag [+]
set statusline+=\                            " blank space

set statusline+=%=                           " right-align from now on

set statusline+=%{PasteForStatusline()}      " paste flag
set statusline+=\                            " blank space
set statusline+=%v                           " column number
set statusline+=\,                           " colon separator
set statusline+=%l                           " row number
set statusline+=\/                           " slash separator
set statusline+=%L                           " number of rows

function! PasteForStatusline()
    let paste_status = &paste
    if paste_status == 1
        return " [paste] "
    else
        return ""
    endif
endfunction
