set nocompatible              " be iMproved, required
set number
set expandtab
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set termguicolors
set t_Co=256
set colorcolumn=80
colorscheme solarized8

filetype off                  " required
syntax on

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

