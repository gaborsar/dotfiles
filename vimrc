execute pathogen#infect()

" https://github.com/editorconfig/editorconfig-vim
" https://github.com/leafgarland/typescript-vim
" https://github.com/neoclide/coc.nvim
" https://github.com/neoclide/coc-tsserver
" https://github.com/w0rp/ale

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

" =======================
"  PLUGIN CONFIGURATIONS
" =======================

autocmd BufRead,BufNewFile *.tsx set filetype=typescript.tsx

let g:hardtime_default_on = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {'typescript': ['eslint'], 'typescript.tsx': ['eslint']}
let g:ale_fixers = {'typescript': ['prettier', 'eslint'], 'typescript.tsx': ['prettier', 'eslint']}

inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)

