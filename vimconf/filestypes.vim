" Python
set encoding=utf-8
let python_highlight_all=1

" flake8 config
autocmd BufWritePost *.py call Flake8()
" ipdb for python
autocmd BufNewFile,BufRead *.py inoremap ;i import ipdb;ipdb.set_trace(context=20)<Esc>_

au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=120
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" js html and css
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
    \ set expandtab
    \ set autoindent
