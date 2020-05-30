let mapleader = "\<space>"
" general config
syntax on
set background=dark
colorscheme hybrid_material
set history=1000
set hidden  "buffer hiding to switch to another buffer without saving
set mouse=a
set noswapfile
set undofile
set undodir=~/.vim/undovim
set modifiable
" set autoread
set incsearch
set hlsearch
set cursorline
set wildmenu
"rows numbers and relative to current row
set number
set relativenumber
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
" removing highlight on quickfixline on first row
highlight! link QuickFixLine Normal
" letting backspace delete indent
set backspace=indent,eol,start

"Applications configurations
" nerdtree config
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader><S-N> :NERDTreeFind<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowHidden=1
" airline
let g:airline_theme = "hybrid"
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
noremap <leader>] :set clipboard=unnamedplus<CR>
noremap <leader>[ :set clipboard=<CR>
" save
noremap <leader>w :w<CR>
" quit
noremap <leader>q :q<CR>
" save and quit
noremap <leader>x :x<CR>
" close buffer
noremap <leader>c :bd<CR>
" find with rg
nnoremap <leader>f :Rg<CR>
" browse with fzf
nnoremap <leader>t :Files<CR>
