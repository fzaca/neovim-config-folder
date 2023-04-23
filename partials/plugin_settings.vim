"=========================================
" Plugin Settings
"=========================================

set background=dark
colorscheme gruvbox " gruvbox
let g:airline_theme = 'base16_material'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_padding = 2
let g:airline_right_padding = 2

" config for theme
set cursorline
hi! CursorLine guibg=None
hi! CursorLineNr guibg=none

" linea de numeros
highlight LineNr ctermbg=none guibg=none
highlight CursorLineNr ctermfg=none guifg=#fabd2f

" Resaltar constantes en Python en amarillo
augroup myPythonColors
  autocmd!
  autocmd ColorScheme * highlight pythonConstant ctermfg=yellow guifg=yellow
augroup END

" hiPairs
" let g:hiPairs_enable_matchParen = 0

" vim-json
let g:vim_json_syntax_conceal = 0

" NERDTree
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd StdinReadPre * let s:std_in=1

" Airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['branch']

" Ale
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_linters_explicit = 1
let g:ale_linters = {}
let g:ale_fixers = {}

" Rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
    \ 'separately': {
        \ 'nerdtree': 0,
    \ }
\}

" Coc.nvim
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Sneak Config
let g:sneak#label = 1

" Tab for triggering completion
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" CTRL + Space for triggering completion
inoremap <silent><expr> <c-space> coc#refresh()
