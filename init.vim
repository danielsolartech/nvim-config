" Plugins
call plug#begin()

" General
Plug 'ap/vim-css-color' " View CSS colors
Plug 'preservim/nerdtree' " File explorer
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'iamcco/markdown-preview.vim' " Markdown preview
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense

" Theme (Ayu)
Plug 'ayu-theme/ayu-vim'

" End Plugins
call plug#end()

" General Configuration
set number " Número de línea
set mouse=a
set nowrap
set nobackup
set noswapfile
set sw=4

syntax enable
filetype indent on
filetype plugin on

" Theme Configuration
set termguicolors
let ayucolor="dark"
colorscheme ayu

" Markdown Preview Configuration
nmap <F8> <Plug>MarkdownPreview
nmap <F9> <Plug>StopMarkdownPreview

" NerdTree Configuration
let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='-'
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git']

nmap <C-b> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

