set number
set autoindent
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set mouse=a
set noswapfile


call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'dracula/vim',{'as': 'dracula'}
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


set termguicolors

let g:gruvbox_contrast_dark='hard'
let g:airline_theme='transparent'

colorscheme gruvbox
nnoremap <C-n> :NERDTree<CR>

nnoremap <C-Tab> :bprevious<CR>
