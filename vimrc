execute pathogen#infect()

" ack.vim          - https://github.com/mileszs/ack.vim
" ctrlp.vim        - https://github.com/ctrlpvim/ctrlp.vim
" editorconfig.vim - https://github.com/editorconfig/editorconfig-vim
" gitgutter.vim    - https://github.com/airblade/vim-gitgutter
" goyo.vim         - https://github.com/junegunn/goyo.vim
" nerdcommenter    - https://github.com/scrooloose/nerdcommenter
" surround.vim     - https://github.com/tpope/vim-surround
" tsuquyomi        - https://github.com/Quramy/tsuquyomi
" typescript-vim   - https://github.com/leafgarland/typescript-vim
" vim-airline      - https://github.com/vim-airline/vim-airline
" vimproc.vim      - https://github.com/Shougo/vimproc.vim
" YouCompleteMe    - https://github.com/Valloric/YouCompleteMe

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

set tabstop=4
set softtabstop=4
set shiftwidth=4

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

" =======================
"  PLUGIN CONFIGURATIONS
" =======================

let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git\|coverage'
