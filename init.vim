filetype off

" Plugins
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'tmhedberg/matchit'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'tmsvg/pear-tree'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go'
Plug 'vimwiki/vimwiki'
Plug 'jnurmine/Zenburn'
Plug 'SirVer/ultisnips'

call plug#end()

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

" Colorscheme
color zenburn

augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.js set filetype=javascript
    autocmd BufNewFile,BufRead *.ts set filetype=typescript
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
    autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

" Pear-tree
let g:pear_tree_smart_openers   = 1
let g:pear_tree_smart_closers   = 1
let g:pear_tree_smart_backspace = 1

" Python
autocmd FileType python let b:coc_root_patterns = ['.git', '.env']

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:vimwiki_table_mappings=0

" Go
let g:go_fmt_command = "goimports"
let g:go_def_mode="gopls"
let g:go_info_mode="gopls"

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


set rtp^=$HOME
