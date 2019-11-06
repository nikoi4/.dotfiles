syntax on
" general config
set nu
set relativenumber


" YCM config go to https://github.com/ycm-core/YouCompleteMe#macos
" use this if you complete me was compiled using libclang
let g:ycm_use_clangd = 0
" use these to make sure windows closes when done and keybinding to open ycm
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" nerdtree config
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

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
" set/unset global clipboard
noremap \\ :set clipboard=unnamed<CR>
noremap \] :set clipboard=<CR>

"nnoremap <C-Up> :vsp
"nnoremap <C-Down> :sp
