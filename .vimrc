set nocompatible

set showmatch
set ignorecase
set smartcase
set incsearch

filetype plugin on
filetype indent on

set autoread

set noerrorbells
set novisualbell
set t_vb=
set belloff=all

set backup
set backupdir=~/.vim/.backup/,.
set directory=~/.vim/.swap/,.
set undodir=~/.vim/.undo/,.

syntax enable
set hlsearch
set wildmenu
set number
set ruler
set wrap!

set fileformat=unix

set noexpandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set cindent

set background=dark
colorscheme PaperColor
"colorscheme default
hi Search ctermbg=3 ctermfg=None
