"""""""""""""""""""""""""""""""""""""""
""" ===== pink_money_king's vimrc =====
"
"
"""
""" ===== GENERAL =====
"""
set history=1000
" Indent and Filetype

set autoindent
filetype plugin indent on

" Auto Read a file if changed from the outside
set autoread

" Color Theme
syntax enable
" colorscheme elflord
colorscheme monochrome

" Leader Key
let mapleader = ";"

set visualbell

" Setting line numbers + relative
set number
set relativenumber

set backspace=indent,eol,start
set complete-=i
set smarttab
set incsearch
set smartcase
set noswapfile
set cursorline
set wildmenu
set wrap

set lbr
set tw=700

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Show matching brackets
set showmatch
set mat=1


"""
""" ===== PLUGINS =====
"""
" vim-plug manager
" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

"" Useful Plugins

" Comment Stuff Out
Plug 'tpope/vim-commentary'

" Sugar for UNIX-shell commands
Plug 'tpope/vim-eunuch'

"" Plugins That Can Be replaced with native features

" Fuzzy path finder
Plug 'kien/ctrlp.vim'

" NerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Syntax highlighting and indenting for JSX
Plug 'panloss/vim-javascript'
Plug 'mxw/vim-jsx'

""" Plugin Settings

" ctrlp fuzzy file finder
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_by_filename = 1

" Nerdtree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let g:NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

nnoremap <leader>f :NERDTreeToggle<cr>


call plug#end()

"""
""" ===== REMAPPING =====
"
"
" Toggle highlight
nnoremap <leader><space> :nohlsearch<CR>

" ;ss toggles spell checking
nnoremap <leader>ss :setlocal spell!<cr>


"" Insert Mode
inoremap jj <Esc>
inoremap JJ <Esc>

" Uppercase Words while typing
inoremap <c-u> <Esc>viwUea

"""
""" ===== MOVEMENT =====
"""
nnoremap <leader>l :bnext<cr>
nnoremap <leader>h :bprevious<cr>

" Smarter way to move between windows
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
