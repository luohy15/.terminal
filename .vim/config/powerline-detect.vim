if has("unix")
	let s:uname = system("uname -n | tr -d '\n'")
	if (s:uname == "s5-371")
		set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim
	elseif (s:uname == "k350c")
		set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
	elseif (s:uname == "localhost")
		set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
	elseif (s:uname == "mf839.local")
		set rtp+=/usr/local/lib/python3.6/site-packages/powerline/bindings/vim
	endif
endif
