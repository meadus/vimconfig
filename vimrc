syntax on

set background=dark
colorscheme gruvbox

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

set number
set relativenumber
set cursorline
set scrolloff=8

set path+=**
set wildmenu

set splitbelow
set splitright

let mapleader = "-"
let maplocalleader = "\\"

"Notes:
"use _noremap always, _map is dangerous because it might use other maps

"capitalize a word
nnoremap <leader>u viwU

"Move between split windows with the leader
nnoremap <leader>k <c-w>k
nnoremap <leader>j <c-w>j
nnoremap <leader>l <c-w>l
nnoremap <leader>h <c-w>h

"Edit the .vimrc more easily (quick open and quick reload)
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"abbreviations are best for text replacement and won't trigger within another word
iabbrev ssig -- <cr>W. Quinn Meadus<cr>wquinnm@gmail.com

nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>`>ll

nnoremap H 0
nnoremap L $
inoremap jk <esc>
