call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'arcticicestudio/nord-vim'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'

call plug#end()
filetype plugin indent on

let g:mapleader=","

" Colorscheme
colorscheme nord
syntax enable

" Tabs
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent

" Display
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set mouse=a

" Searching
set incsearch
set hlsearch

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" Escape
inoremap jj <esc>

""" Colemak-Vim Mappings"""
" - k/K is the new n/N.
" - s/S is the new i/I ["inSert"].
"
" - l/L skip to the beginning and end of lines
" - Ctrl-l joins lines
" - r replaces i as the "inneR" modifier

" HNEI arrows. Swap 'gn'/'ge' and 'n'/'e'.

noremap <expr> n (v:count == 0 ? 'gj' : 'j')
noremap <expr> e (v:count == 0 ? 'gk' : 'k')
noremap i l

noremap <C-e> <C-u>
noremap <C-n> <C-d>

" Switch panes.
nnoremap H <C-w>h
nnoremap I <C-w>l
nnoremap N <C-w>j
nnoremap E <C-w>k

" Switch buffers.
nnoremap <C-i> :tabnext<CR>
nnoremap <C-h> :tabprevious<CR>

" Last search.
noremap k n
noremap K N

" _r_ = inneR text objects.
onoremap r i

" Easy mappings for BOL EOL
noremap l g^
noremap L g$

"""Misc Mappings"""
noremap ; :
noremap : ;
noremap U <C-r>
nnoremap <CR> o<Esc>
nnoremap <silent> j :noh<CR>
noremap <silent> _ :TComment<CR>
nnoremap p p=`]
noremap s i
noremap S I
noremap <space> i
inoremap <C-e> <C-p>
inoremap <C-p> <C-r>

" NERDTree
" nnoremap <silent> <Leader><Leader> :NERDTreeToggle<CR>
nnoremap <silent> <Leader><Leader> :NERDTreeTabsToggle<CR>
let g:NERDTreeMenuDown='n'
let g:NERDTreeMenuUp='e'
let g:NERDTreeMapOpenExpl=''
let g:NERDTreeMapToggleHidden='H'
let g:NERDTreeChDirMode = 2              " Vim's cwd follows NERDTree's cwd.
let g:NERDTreeMapJumpFirstChild = "ge"
let g:NERDTreeMapJumpLastChild = "gn"
let g:NERDTreeMapOpenExpl = ""
let g:NERDTreeMapOpenSplit = "S"
let g:NERDTreeQuitOnOpen = 0             " Stay open.

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" FZF
noremap <silent> <C-p> :Files<CR>
