function! NERDTreeCDHandler(node)
	call a:node.makeRoot()
	call nerdtree#renderView()
	call b:NERDTreeRoot.putCursorHere(0, 0)
endfunction

call NERDTreeAddKeyMap({ 'key': 'q', 'callback': 'NERDTreeCDHandler', 'quickhelpText': 'Change root to currently selected', 'scope': 'Node' })
