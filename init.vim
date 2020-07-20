" Plugin stuff
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'Shougo/deoplete.nvim'
"Plugin 'deoplete-plugins/deoplete-go'
"Plugin 'deoplete-plugins/deoplete-jedi'
"Plugin 'carlitux/deoplete-ternjs'
Plugin 'zchee/deoplete-clang'

call vundle#end()            " required
filetype plugin indent on    " required

" Non-Plugin Stuff
set nocompatible              " be iMproved, required
set number
set expandtab
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
syntax on

" Color
set background=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
set colorcolumn=80

" JavaScript file size
au FileType javascript,typescript setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" Set utf8 as the standard encoding and en_US as the standard language
set encoding=utf8

" Deoplete stuff
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = "~/go/bin/gocode"
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
"" <TAB>: completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"" Hide preview window after completion
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" turn hybrid line numbers on
set number relativenumber

" Mappings
map <C-n> :NERDTreeToggle<CR>

