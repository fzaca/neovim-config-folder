
"=========================================
" Plugin Manager
"=========================================

" Polyglot
let g:polyglot_disabled = ['markdown']

" Auto Vim-plug install
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

" UI Tweaks
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Plug 'Yggdroot/hiPairs'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'luochen1990/rainbow'

" Match under your cursor when pressing n or N and gets out of the way afterwards.
" Plug ''rktjmp/highlight-current-n.nvim'

" Colorschemes
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'chriskempson/base16-vim'
Plug 'srcery-colors/srcery-vim'
Plug 'yearofmoo/Vim-Darkmate'
Plug 'jacoborus/tender.vim'
Plug 'eddyekofo94/gruvbox-flat.nvim'
Plug 'wittyjudge/gruvbox-material.nvim'
Plug 'Murtaza-Udaipurwala/gruvqueen'

" Jump to any location specified by two characters.
Plug 'justinmk/vim-sneak'

" Code
Plug 'sheerun/vim-polyglot'
Plug 'vim-python/python-syntax'
" Plug 'jiangmiao/auto-pairs'

" Autocomplete / Linting
Plug 'w0rp/ale'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" JSON
Plug 'elzr/vim-json'

" JS
" Plug 'pangloss/vim-javascript'
" Plug 'maxmellon/vim-jsx-pretty'


call plug#end()
