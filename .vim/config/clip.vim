set mouse=nicr
set ttymouse=xterm2
let s:uname = system("uname -s | tr -d '\n'")
if v:version <= 740 || s:uname == "Darwin"
    set clipboard=unnamed
else
    set clipboard=unnamedplus
endif
set pastetoggle=<F5>
