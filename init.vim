" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'cocopon/iceberg.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tmhedberg/matchit'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'alvan/vim-closetag'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'fatih/vim-go'

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
set formatoptions+=r

filetype plugin indent on
syntax on

color iceberg

augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.js set filetype=javascript
    autocmd BufNewFile,BufRead *.ts set filetype=typescript
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
    autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

" Go
let g:go_fmt_command = "goimports"
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" C/C++
au FileType c,cpp setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab

" JavaScript/TypeScript
au FileType javascript,javascript.jsx,typescript,typescript.tsx setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" HTML
au FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" CSS
au FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" Mappings
map <C-n> :NERDTreeToggle<CR>

" vim-closetag
let g:closetag_filenames = '*.html,*.jsx,*.tsx'
