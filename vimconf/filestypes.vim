" Python
set encoding=utf-8

" flake8 config
autocmd BufWritePost *.py call Flake8()
" ipdb for python
autocmd BufNewFile,BufRead *.py inoremap ;i import ipdb;ipdb.set_trace(context=30)<Esc>_
" general python tab and indentation
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=120
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix
au BufNewFile,BufRead *.py let python_highlight_all=1

" js 
au BufNewFile,BufRead *.js set tabstop=2
au BufNewFile,BufRead *.js set softtabstop=2
au BufNewFile,BufRead *.js set shiftwidth=2
au BufNewFile,BufRead *.js set textwidth=120
au BufNewFile,BufRead *.js set expandtab
" au FileType javascript setlocal formatprg=prettier
" au FileType javascript.jsx setlocal formatprg=prettier
" au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
" au FileType html setlocal formatprg=js-beautify\ --type\ html
" au FileType scss setlocal formatprg=prettier\ --parser\ css
" au FileType css setlocal formatprg=prettier\ --parser\ css
" au BufNewFile,BufRead *.js colorscheme OceanicNext 

" html
au BufNewFile,BufRead *.html set tabstop=2
au BufNewFile,BufRead *.html set softtabstop=2
au BufNewFile,BufRead *.html set shiftwidth=2
au BufNewFile,BufRead *.html set expandtab

" css
au BufNewFile,BufRead *.css set tabstop=2
au BufNewFile,BufRead *.css set softtabstop=2
au BufNewFile,BufRead *.css set shiftwidth=2
au BufNewFile,BufRead *.css set expandtab
