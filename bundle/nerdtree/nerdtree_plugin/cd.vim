call NERDTreeAddKeyMap({
				\ 'key': 'q',
				\ 'callback': 'NERDTreeCDHandler',
				\ 'quickhelpText': 'echo full path of current node',
				\ 'scope': 'DirNode' })

function! NERDTreeCDHandler(dirnode)
	call a:dirnode.makeRoot()
	call nerdtree#renderView()
	call b:NERDTreeRoot.putCursorHere(0, 0)
endfunction
