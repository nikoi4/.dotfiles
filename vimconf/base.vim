" general config
syntax on
" set t_Co=256
set background=dark
"rows numbers and relative to current row
set number
set relativenumber
let mapleader = " "
"wrap and linebreak text
set wrap
set linebreak
set nolist

" splits
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=0

" flagging unnsecessary Whitespace
highlight BadWhitespace ctermfg=red guifg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" letting backspace delete indent
set backspace=indent,eol,start


"Applications configurations

" YCM config go to https://github.com/ycm-core/YouCompleteMe#macos
" use this if you complete me was compiled using libclang
let g:ycm_use_clangd = 0
" use these to make sure windows closes when done and keybinding to open ycm
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" nerdtree config
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1

"keyboard mappings

" disable highlighting
nnoremap <leader>h :set hlsearch! hlsearch?<CR>
" navigate buffers
nnoremap <C-K> :bn<CR>
nnoremap <C-H> :bp<CR>
" split navigations
nnoremap <C-J> :sp<CR>
nnoremap <C-L> :vsp<CR>
" set/unset global clipboard
noremap <leader>] :set clipboard=unnamed<CR>
noremap <leader>[ :set clipboard=<CR>
" set ipdb
inoremap ;i import ipdb;ipdb.set_trace(context=20)<Esc>_

