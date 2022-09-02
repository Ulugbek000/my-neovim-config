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
Plug 'arcticicestudio/nord-vim'
Plug 'tanvirtin/monokai.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'bluz71/vim-moonfly-colors'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'caenrique/nvim-toggle-terminal'
Plug 'mhartington/oceanic-next'
Plug 'flazz/vim-colorschemes'
call plug#end()


set termguicolors

let g:gruvbox_contrast_dark='hard'
let g:airline_theme='transparent'
let g:netrw_browse_split=3
let g:netrw_banner=0
let g:netrw_liststyle=3
colorscheme monokai-phoenix


nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <C-Tab> :bprevious<CR>
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
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

EOF
