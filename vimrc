filetype off

call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab

set showmatch
set fo=crolq
set ttymouse=xterm2
set nocompatible

set ttyfast
set nohlsearch

set incsearch

" make backspace always work
set backspace=indent,eol,start

set foldmethod=indent

set noerrorbells
set vb

"augroup mkd
"  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
"augroup END

"set runtimepath+=$HOME/.vim/vim-ruby

"let clj_highlight_builtins = 1
"let clj_paren_rainbow = 1
