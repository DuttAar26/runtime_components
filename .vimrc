" ~/.vimrc — read by vim every time it starts.

set nocompatible            " use vim features, not strict old-vi behavior
syntax on                    " color the code
filetype plugin indent on    " language-aware indentation
set encoding=utf-8
set backspace=indent,eol,start

set number                  " line numbers
set ruler                    " cursor position
set showcmd                 " show partially typed commands
set laststatus=2            " always show status line
set showmatch               " briefly jump to matching bracket
set scrolloff=5             " keep 5 lines visible above/below cursor
set colorcolumn=80          " guide at column 80
set wildmenu                " tab-completion menu

set tabstop=2               " tab displays as 2 columns
set shiftwidth=2            " auto-indent moves by 2 columns
set softtabstop=2           " tab key inserts 2 columns
set expandtab               " insert spaces instead of tabs
set autoindent              " keep previous line's indent

autocmd FileType make setlocal noexpandtab

set incsearch               " search as you type
set hlsearch                " highlight matches
set ignorecase              " case-insensitive search...
set smartcase               " ...unless capital letter typed

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
