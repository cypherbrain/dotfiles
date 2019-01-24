set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
filetype plugin indent on
set number
set expandtab
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set termguicolors

" Configure backspace so it acts like it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Prevents extending single-line comments to the next line on carriage return
" in C/C++ files.
au FileType c,cpp setlocal comments-=:// comments+=f://

" Turning off the bell in GVim
autocmd GUIEnter * set vb t_vb=

" Enable 256 color palatte in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
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

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { <CR>{<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>

function ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
 return "\<Right>"
 else
 return a:char
 endif
endf

function CloseBracket()
 if match(getline(line('.') + 1), '\s*}') < 0
 return "\<CR>}"
 else
 return "\<Esc>j0f}a"
 endif
endf

function QuoteDelim(char)
 let line = getline('.')
 let col = col('.')
 if line[col - 2] == "\\"
 "Inserting a quoted quotation mark into the string
 return a:char
 elseif line[col - 1] == a:char
 "Escaping out of the string
 return "\<Right>"
 else
 "Starting a string
 return a:char.a:char."\<Esc>i"
 endif
endf

