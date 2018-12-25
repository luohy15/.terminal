let mapleader=" "
" nmap <silent> <Leader>fs :FSHere<CR>
" nnoremap <Leader>sf :CtrlSF<CR>
" nmap <Leader>b :!rm -rf main<CR>:wa<CR>:make<CR>:cw<CR><CR>:!./main<CR>
" nmap <Leader>r :!g++ -o a % && :!./a<CR>
" nnoremap <Leader>pf :CtrlP<CR>
" nmap <Leader>s :AsyncRun gcc -o %<.s % -S -m32<CR>
" nmap <Leader>a :AsyncRun as -o %<.o % --32<CR>
" nmap <Leader>l :AsyncRun ld -o %< %<.o -m elf_i386 && ./%<<CR>
" nmap <Leader>f :copen<CR>
" nmap <Leader>b :SCCompile<cr>
" nmap <Leader>r :SCCompileRun<cr>
" nnoremap <Leader>pi :PlugInstall<CR>
nmap <Leader>s :source ~/.vimrc<CR>
nmap <Leader>y :%y+<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>
nmap <Leader>Q :qa!<CR>
nmap <Leader>yt :call Translate()<CR>
nmap <Leader>yq :call CloseDict()<CR>
noremap <Leader>t :tabnew<CR>
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 :tablast<CR>
