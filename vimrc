syntax on
set showmatch
set fo=crolq
set ttymouse=xterm2
set nocompatible

filetype on
filetype indent on
filetype plugin on

set ttyfast
set nohlsearch

set incsearch
set autoindent

" make backspace always work
set backspace=indent,eol,start

set tabstop=2
set expandtab
set shiftwidth=2 " or whatever
set smarttab autoindent
set foldmethod=indent

"autocmd Filetype ruby source ~/.vim/ruby-macros.vim

set noerrorbells
set vb

"set guifont=Monospace14

augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

"set runtimepath+=$HOME/.vim/vim-ruby

let clj_highlight_builtins = 1
let clj_paren_rainbow = 1
