execute pathogen#infect()

" base16-vim
" ctrlp.vim
" goyo.vim
" nerdcommenter
" vim-gitgutter

filetype plugin indent on

syntax on

set spelllang=en

set nobackup
set nowritebackup
set noswapfile

set hlsearch
set incsearch
set showmatch

set ruler
set number
set nowrap

set backspace=2

" =============
"  INDENTATION
" =============

set expandtab

au BufNewFile,BufRead *.js set tabstop=4
au BufNewFile,BufRead *.js set softtabstop=4
au BufNewFile,BufRead *.js set shiftwidth=4

au BufNewFile,BufRead *.c set tabstop=4
au BufNewFile,BufRead *.c set softtabstop=4
au BufNewFile,BufRead *.c set shiftwidth=4

" =================
"  CUSTOM COMMANDS
" =================

command Trim :%s/\s\+$//|''
command T :Trim
command W :w
command Q :q
command E :Explore
command Wq :wq
command WQ :wq

" ===============
"  CUSTOM COLORS
" ===============

colorscheme base16-classic-dark
hi ExtraWhitespace ctermbg=red

" ===================
"  CUSTOM HIGHLIGHTS
" ===================

match ExtraWhitespace /\s\+$/

" =======================
"  PLUGIN CONFIGURATIONS
" =======================

let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git\|coverage'
