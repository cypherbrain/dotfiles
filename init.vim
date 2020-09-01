" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'cocopon/iceberg.vim'

call vundle#end()

set number relativenumber
set expandtab
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set encoding=utf8
set nobackup
set nowb
set noswapfile
set termguicolors

filetype plugin indent on
syntax on

color iceberg

augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END


" JavaScript/TypeScript
au FileType javascript,typescript setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" HTML
au FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" CSS
au FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" Mappings
map <C-n> :NERDTreeToggle<CR>


