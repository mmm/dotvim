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
set visualbell

set incsearch
"set nohlsearch
set hlsearch
nmap <silent> <leader>n :silent :nohlsearch<CR>

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

" ` keeps col info too
"nnoremap ' `
"nnoremap ` '

let mapleader = ","

set grepprg=ack
set grepformat=%f:%l:%m

autocmd FileType make     set noexpandtab

set history=1000
set wildmode=list:longest

set ignorecase 
set smartcase

set title

set backupdir=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" remember some stuff after quiting vim:
" marks, registers, searches, buffer list
set viminfo='20,<50,s10,h,%

" fuzzy finder
let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70

map <leader>t :FuzzyFinderTextMate<CR>
map <leader>b :FuzzyFinderBuffer<CR>

" scratch.vim
function! ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction

"map <leader>s :call ToggleScratch()<CR>

" Markdown preview
imap <leader>p <ESC>:w!<CR>:!markdown % < %.html && open %.html<CR><CR>a
map  <leader>p <ESC>:w!<CR>:!markdown % < %.html && open %.html<CR><CR>a
