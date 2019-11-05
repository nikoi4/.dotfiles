syntax on

" letting backspace delete indent
set backspace=indent,eol,start

" flagging unnsecessary Whitespace
highlight BadWhitespace ctermfg=red guifg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" splits
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=0


" mappings
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"nnoremap <C-Up> :vsp
"nnoremap <C-Down> :sp
