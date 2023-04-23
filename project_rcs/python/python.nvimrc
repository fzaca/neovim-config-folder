function PythonSpecificSettings()
  setlocal colorcolumn=88
endfunction
autocmd FileType python call PythonSpecificSettings()

let g:python3_host_prog = 'venv/bin/python3'

" Ale
let g:ale_fix_on_save = 1

let g:ale_linters = {'python': ['flake8', 'mypy']}
let g:ale_fixers = {'python': ['isort', 'black']}

" NERDTree
let g:NERDTreeIgnore = [
 \ '\.pyc$', 
 \ '__pycache__', 
 \ '\.db$', 
 \ '\.mypy_cache$', 
 \ '\.pytest_cache$', 
 \ '\.git$',
 \ '\.sock$',
 \ '\.pid$',
 \ '\.vim$',
 \ ]
