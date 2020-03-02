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
set relativenumber
set nowrap

set backspace=2

" =============
"  INDENTATION
" =============

set expandtab

set tabstop=4
set softtabstop=4
set shiftwidth=4

" ==============
"  FUZZY SEARCH
" ==============

set path+=**
set wildignore+=**/node_modules/**,**/DS_Store/**,**/.git/**,**/coverage/**

" =================
"  CUSTOM COMMANDS
" =================

command Trim :%s/\s\+$//g
command T :Trim
command W :w
command Q :q
command E :Explore
command Wq :wq
command WQ :wq

imap jj <Esc>
nmap tt :Trim
nmap ww :w

" ===============
"  CUSTOM COLORS
" ===============

hi ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/
