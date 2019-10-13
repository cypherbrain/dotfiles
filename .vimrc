set nocompatible              " be iMproved, required
set number
set expandtab
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set termguicolors
set t_Co=256
set colorcolumn=80
colorscheme nord

filetype off                  " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'arcticicestudio/nord-vim'
Plugin 'git@github.com:Valloric/YouCompleteMe.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

" Configure backspace so it acts like it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Prevents extending single-line comments to the next line on carriage return
" in C/C++ files.
au FileType c,cpp setlocal comments-=:// comments+=f://

" Turning off the bell in GVim
autocmd GUIEnter * set vb t_vb=

if has("gui_running")
    set guioptions -=T " remove toolbar
    set guioptions -=r " remove right-hand scrollbar
    set guioptions -=L " remove left-hand scrollbar
    set guifont=Ubuntu\ Mono\ 12
    set lines=999 columns=999
endif

" Set utf8 as the standard encoding and en_US as the standard language
set encoding=utf8

" Set Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

