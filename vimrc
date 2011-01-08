filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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
set foldcolumn=1

set noerrorbells
set vb

vmap < <gv
vmap > >gv
vmap <Tab> >gv
vmap <S-Tab> <gv

:source /usr/share/vim/addons/plugin/matchit.vim

