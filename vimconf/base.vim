let mapleader = "\<space>"
" general config
syntax on
" set t_Co=256
set background=dark
colorscheme hybrid_material
set history=1000
set hidden  "buffer hiding to switch to another buffer without saving
set mouse=a
set noswapfile
set undofile
set undodir=~/.vim/undovim
set modifiable
set autoread
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

" flagging unnsecessary Whitespace
highlight BadWhitespace ctermfg=red guifg=red
au BufRead,BufWritePost,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" letting backspace delete indent
set backspace=indent,eol,start


"Applications configurations

" CommandT
let g:CommandTMaxFiles=400000
let g:CommandTTraverseSCM='dir'
" let g:CommandTFileScanner='find'


" YCM config go to https://github.com/ycm-core/YouCompleteMe#macos
" use this if you complete me was compiled using libclang
let g:ycm_use_clangd = 0
" use these to make sure windows closes when done and keybinding to open ycm
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader><S-G>  :YcmCompleter GoToReferences<CR>

" nerdtree config
nnoremap <leader><S-N> :NERDTreeFind<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeShowHidden=1

" airline
let g:airline_theme = "hybrid"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1

" emmet
" let g:user_emmet_install_global = 0

" let g:user_emmet_settings = {
" \  'javascript' : {
" \      'extends' : 'jsx',
" \  },
" \}

" autocmd FileType html,css,javascript,js,jsx,py EmmetInstall

" vim-jsx-pretty
" let g:vim_jsx_pretty_colorful_config = 1


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
" save
noremap <leader>w :w<CR>
" quit
noremap <leader>q :q<CR>
" save and quit
noremap <leader>x :x<CR>
" close buffer
noremap <leader>c :bd<CR>
" find with Rg
nnoremap <leader>/ :Rg<CR>
nnoremap <leader>? :Rg -w
