" Essential settings
set nocompatible              " Disable compatibility with old Vi
filetype off                  " Disable filetype plugins temporarily

call plug#begin('~/.vim/plugged')

" List your plugins here
Plug 'tpope/vim-fugitive'

call plug#end()

" Re-enable filetype detection after plugins are loaded
filetype plugin indent on

syntax on

set termguicolors
set background=dark
colorscheme gruvbox

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start

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

"Cycle between windows.
nnoremap <Tab> <c-w>w

" Normal mode: Switch between buffers 
nnoremap <leader>b :bnext<CR>
nnoremap <leader>B :bprevious<CR>

"Edit the .vimrc more easily (quick open and quick reload)
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"abbreviations are best for text replacement and won't trigger within another word
iabbrev ssig -- <cr>W. Quinn Meadus<cr>wquinnm@gmail.com

nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>`>ll

nnoremap H 0
nnoremap L $
inoremap jk <esc>
nnoremap <leader>z ZZ
nnoremap <leader>w :w<cr>
nnoremap <leader>qq :q!<cr>

"Open Explorer...
nnoremap <leader>ee :Lex<cr>
noremap <leader>w :w<cr>

