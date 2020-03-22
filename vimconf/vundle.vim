set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub

" File browsing
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdtree'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ycm-core/YouCompleteMe'
" commenting uncommenting code
Plugin 'tpope/vim-commentary'
" quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'
" RipGrep in Vim and display results in a quickfix list 
Plugin 'jremmen/vim-ripgrep'
" autopairing insert or delete brackets, parens, quotes in pair
Plugin 'jiangmiao/auto-pairs'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" indentation plugins
Plugin 'vim-scripts/indentpython.vim'
" syntax plugins
Plugin 'mattn/emmet-vim', { 'for': ['javascript','js', 'jsx', 'html', 'css'] }
Plugin 'nvie/vim-flake8'
" Plugin 'vim-syntastic/syntastic'

" plugins for js and react
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'mhartington/oceanic-next'
" Plugin 'dense-analysis/ale' "for lingting goto and completition js
" Plugin 'maxmellon/vim-jsx-pretty'
" Plugin 'vim-javascript'

" vim themes
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'kristijanhusak/vim-hybrid-material'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

