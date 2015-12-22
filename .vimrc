Dustin

" Get out of vi's compatibility mode
set nocompatible

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" Enable filetype plugin
filetype plugin on
filetype indent on

" set to auto read when a file is changed from the outside
set autoread

"Remove the Windows ^M
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Remove indenting on empty lines
map <F2> :%s/\t*$//g<cr>:noh<cr>''


"""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""
colorscheme torte
"colorscheme wombat

set guifont=Courier\ New:h9

"set guioptions-=T
set guioptions+=T

" Enable syntax highlighting
syntax enable


"""""""""""""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor when moving vertical
set scrolloff=7

" Turn on WiLd menu
set wildmenu

" Always show current position
set ruler

" Show line number
set number

" set backspace
set backspace=eol,start,indent

" Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

" Ignore case when seasrching
set ignorecase
set incsearch

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=

" Show matching braces
set showmatch

" Highlight search things
" set nohlsearch
set hlsearch


"""""""""""""""""""""""""""""""""""
" Statusline
"""""""""""""""""""""""""""""""""""
set laststatus=2
function! CurDir()
	let curdir = substitute(getcwd(), '/users/djmyers/', "~/", "g")
	return curdir
endfunction

" Format the statusline
set statusline=\ %F%m%r%h\ \(%{&ff}\)\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c%V


"""""""""""""""""""""""""""""""""""""""
" Files and backups
"""""""""""""""""""""""""""""""""""""""
" Turn backup off
set nobackup
set nowb
set noswapfile

" Favorite filetypes\
"set fileformats=unix,dos,mac
set fileformat=unix


"""""""""""""""""""""""""""""""""""""""
" Text Options
"""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set smarttab

" Auto indent
set autoindent

" Smart indent
set smartindent

" Wrap Lines
set wrap


set diffexpr=MyDiff()
function MyDiff()
	let opt = '-a --binary '
	if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
	if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
	let arg1 = v:fname_in
	if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
	let arg2 = v:fname_new
	if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
	let arg3 = v:fname_out
	if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
	let eq = ''
	if $VIMRUNTIME =~ ' '
		if &sh =~ '\<cmd'
			let cmd = '""' . $VIMRUNTIME . '\diff"'
			let eq = '"'
		else
			let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
		endif
	else
		let cmd = $VIMRUNTIME . '\diff'
	endif
	silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

