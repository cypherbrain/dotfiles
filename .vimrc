set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
filetype plugin indent on
set noerrorbells
set number
set expandtab
set smarttab
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set termguicolors
set background=dark
set ruler
set colorcolumn=80
set backspace=indent,eol,start

set noswapfile
set nobackup
set nowritebackup
set splitright
set splitbelow
set autoread

set t_Co=256

" For long lines
set wrap
set textwidth=79
set formatoptions=qrn1

if has("gui_running")
  autocmd GUIEnter * simalt ~x
  set guifont=Consolas:h11
  set guioptions -=T "remove toolbar
  set guioptions -=r "remove right-hand scroll bar
  set guioptions -=L "remove left-hand scroll bar
  set lines=999 columns=999
endif

colorscheme iceberg

colorscheme nord

" Configure backspace so it acts like it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" C/C++ settings
autocmd FileType *.c setlocal comments-=:// comments+=f:// ts=2 sw=2 sts=2
autocmd FileType *.cpp setlocal comments-=:// comments+=f:// ts=2 sw=2 sts=2
autocmd FileType *.h setlocal comments-=:// comments+=f:// ts=2 sw=2 sts=2

" Python settings
autocmd FileType *py setlocal ts=4 sw=4 sts=4

" Turning off the bell in GVim
autocmd GUIEnter * set vb t_vb=

" Enable 256 color palatte in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
if $COLORTERM == 'truecolor'
    set t_Co=256
endif

set guifont=Ubuntu\ Mono\ 16

" Set utf8 as the standard encoding and en_US as the standard language
set encoding=utf8

" Set Unix as the standard file type
set ffs=unix,dos,mac

