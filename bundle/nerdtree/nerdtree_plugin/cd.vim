call NERDTreeAddKeyMap({
				\ 'key': 'q',
				\ 'callback': 'NERDTreeCDHandler',
				\ 'quickhelpText': 'echo full path of current node',
				\ 'scope': 'DirNode' })

function! NERDTreeCDHandler(dirnode)
	call b:NERDTree.changeRoot(a:dirnode)
endfunction
