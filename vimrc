set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'ap/vim-css-color'
Plugin 'derekwyatt/vim-scala'
Plugin 'vim-scripts/Rename2'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tomasr/molokai'
Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'majutsushi/tagbar'
Plugin 'msanders/snipmate.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/vimwiki'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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


set backspace=2
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

if has("gui_running")
  imap <C-s> <Esc>:w<CR>
else
  imap <Esc>s <Esc>:w<CR>
endif

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
