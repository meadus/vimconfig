" Essential settings
"set nocompatible              " Disable compatibility with old Vi
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

"Git (fugitive) 
nnoremap <leader>gs :G status<CR>         " Git status
nnoremap <leader>gd :Gdiffsplit<CR>      " Git diff
nnoremap <leader>gb :G blame<CR>          " Git blame
nnoremap <leader>gl :G log<CR>            " Git log
nnoremap <leader>gc :G commit<CR>         " Git commit
nnoremap <leader>gp :G push<CR>           " Git push
nnoremap <leader>gu :G pull<CR>           " Git pull
nnoremap <leader>gw :G write<CR>          " Stage current file
nnoremap <leader>gr :G read<CR>           " Unstage current file (reset changes)
nnoremap <leader>gbc :Git branch<CR>     " Show branches
nnoremap <leader>gch :Git checkout<Space> " Checkout a branch
nnoremap <leader>gm :G merge<CR>          " Resolve merge conflicts
nnoremap <leader>go :G edit<Space>        " Open file from another branch/commit
nnoremap <leader>gcb :Gdiffsplit HEAD..<CR> " Compare current branch with upstream
nnoremap <leader>gh :nohlsearch<CR>      " Clear search highlights
nnoremap <leader>gq :G close<CR>          " Close Fugitive windows

