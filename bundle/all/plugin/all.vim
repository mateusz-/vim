syntax on
filetype plugin indent on
colorscheme molokai
set nocompatible
set backspace=indent,eol,start
set shiftwidth=2
set tabstop=2
set noexpandtab
set autoindent
set selectmode=mouse
set nobackup
set nowritebackup
set history=50  
set ruler
set list
set showcmd     
set incsearch 
set listchars=tab:>.
set ignorecase
set scs
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*
set laststatus=2
set showmatch
set notildeop
set number
set gfn=Ubuntu\ Mono\ 16
set autochdir
set guioptions+=LTlRrbm
set guioptions-=LTlRrbm
set undodir=$HOME/.vim/undo
set undofile
set hlsearch
set wildmenu
set wildmode=longest,list

command Tabp tabp
command Tabn tabn
command W w
command Toxml set ft=xml | execute "%!tidy -q -i -xml"
command Tohtml set ft=html | execute "%!tidy -q -i -html"

map <F2> :NERDTreeToggle<CR>
map <F4> :noh<CR>

let &t_Co=256 
let &t_AF="\e[38;5;%dm" 
let &t_AB="\e[48;5;%dm"
let g:js_indent_log = 0
let NERDTreeChDirMode=2
let NERDTreeMinimalUI=1

nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
au BufNewFile,BufRead *.less set filetype=less

autocmd vimenter * if !argc() | NERDTree | endif
autocmd InsertEnter,InsertLeave * set cul!
