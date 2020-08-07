" Plugin stuff
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

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
set splitright
syntax on

" Color
set background=dark
"highlight ColorColumn ctermbg=0 guibg=lightgrey
"set colorcolumn=80

augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END

" JavaScript tab size
au FileType javascript,typescript setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" HTML tab size
au FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" Set utf8 as the standard encoding and en_US as the standard language
set encoding=utf8

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" turn hybrid line numbers on
set number relativenumber

" Mappings
map <C-n> :NERDTreeToggle<CR>

" Prettier
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
