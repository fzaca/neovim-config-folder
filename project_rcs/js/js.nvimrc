function JsSpecificSettings()
    setlocal colorcolumn=80
    set tabstop=2
    set shiftwidth=2
endfunction
autocmd FileType javascript call JsSpecificSettings()

function HTMLSpecificSettings()
    setlocal colorcolumn=120
    set tabstop=2
    set shiftwidth=2
endfunction
autocmd BufEnter *.html call HTMLSpecificSettings()

" Ale
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {
    \ 'javascript': ['prettier'],
    \ 'html': ['prettier'],
    \ 'css': ['prettier'],
    \ 'json': ['prettier']
\ }

nnoremap ff :ALEFix<CR>

" NERDTree
let g:NERDTreeIgnore = [
 \ '\.git$',
 \ 'node_modules$',
\ ]
