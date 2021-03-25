set nocompatible
filetype off

"Vundle stuff
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'nathanaelkane/vim-indent-guides'
set ts=2 sw=2 et
let g:indent_guides_srat_level=2
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

"pep 8 indentation for python
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Visualize space tabs and newlines
set listchars+=tab:▸\ ,eol:¬,space:.
" set list

" Color scheme 
set t_Co=256
set background=dark
set number

" Nerdtree stuff
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set splitright

" clipboard
set clipboard=unnamedplus

" stuff
syntax on
