function VimScriptSpecificSettings()
    setlocal colorcolumn=80
    set tabstop=4
    set shiftwidth=4
endfunction
autocmd FileType *.vim call VimScriptSpecificSettings()

" NERDTree
let g:NERDTreeIgnore = [
 \ '\.git$',
 \ '\autoload$',
 \ '\plugged$',
 \ '\.netrwhist$',
 \ ]
