set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


let mapleader = ","

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'ap/vim-css-color'
Bundle 'vim-scripts/Rename2'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tomasr/molokai'
Bundle "mileszs/ack.vim"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "scrooloose/syntastic"
"Bundle "mattn/zencoding-vim"
Bundle "mattn/emmet-vim"
Bundle "majutsushi/tagbar"
Bundle "msanders/snipmate.vim"
Bundle "terryma/vim-multiple-cursors"
Bundle "vim-ruby/vim-ruby"
Bundle "vim-scripts/vimwiki"
filetype plugin indent on     " required!
filetype indent on
filetype plugin on
colorscheme molokai

syntax on
syntax enable

set guifont=Monaco\ 16
inoremap <C-h> <LEFT>
inoremap <C-l> <RIGHT>
inoremap <C-j> <DOWN>
inoremap <C-K> <UP>
inoremap jk <Esc>
nnoremap <leader>p :CtrlPTag<cr>
map <F7> :NERDTreeFind<CR>
map <F8> :NERDTreeToggle<CR>

"au BufRead,BufNewFile *.py set expandtab


set hlsearch
set incsearch
set nowrapscan
set number
set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set smarttab
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
  \set guioptions-=T <Bar>
  \set guioptions-=m <bar>
\else <Bar>
  \set guioptions+=T <Bar>
  \set guioptions+=m <Bar>
\endif<CR>


if has("gui_running")
  imap <C-s> <Esc>:w<CR>
else
  imap <Esc>s <Esc>:w<CR>
endif

