set number
set relativenumber
set autoindent
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set mouse=a
set noswapfile
set guicursor=n-v-c-i:block


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
Plug 'arcticicestudio/nord-vim'
Plug 'tanvirtin/monokai.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'bluz71/vim-moonfly-colors'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'caenrique/nvim-toggle-terminal'
Plug 'mhartington/oceanic-next'
Plug 'flazz/vim-colorschemes'
Plug 'ThePrimeagen/vim-be-good'
call plug#end()


set termguicolors

let g:gruvbox_contrast_dark='hard'
let g:airline_theme='transparent'
let g:netrw_browse_split=3
let g:netrw_banner=0
let g:netrw_liststyle=3
let mapleader=" "
colorscheme gruvbox


nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-e> gt<CR>
nnoremap tt :tabnew <bar> :NERDTreeToggle <CR>
nnoremap <Leader>qq ZZ <CR>
hi Normal guibg=NONE ctermbg=NONE
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


" Neovide configuration
"
let g:neovide_transparency=0.98
set guifont=Iosevka\ Term





lua <<EOF

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
   additional_vim_regex_highlighting = false,
  },
}

EOF
