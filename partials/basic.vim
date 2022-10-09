"=========================================
" Basic settings
"=========================================

" set system clipboard as default
set clipboard=unnamed

" turn off vi compatability
set nocompatible

" turn off bars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

set t_Co=256

if (has("termguicolors"))
 set termguicolors
endif

syntax on
set number

" converting tabs to spaces
set expandtab

set shiftwidth=4
set softtabstop=4

" turn off swap/backup files
set nobackup
set nowritebackup
set noswapfile

set splitright
set splitbelow

" allow per-project confs
set exrc
set secure

" cursorline
color desert 
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
set nocursorline

" per-file-extension settings
filetype plugin on

set signcolumn=no " border left

set encoding=UTF-8

set updatetime=300
set shortmess+=c

let g:python3_host_prog = '/usr/bin/python3'
