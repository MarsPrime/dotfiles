set number
set noswapfile 
set mouse=a
set relativenumber

syntax on


set tabstop=4
set shiftwidth=5
set softtabstop=4

set scrolloff=8

set smarttab

set expandtab

set smartindent

call plug#begin()

Plug 'ThePrimeagen/vim-be-good'
"" Theme
Plug 'folke/tokyonight.nvim'
"" To view project files
Plug 'preservim/nerdtree'
"" Colorful braces
Plug 'frazrepo/vim-rainbow'
"" Git changes
Plug 'airblade/vim-gitgutter'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-finder'
Plug 'hrsh7th/cmp-nvim-lsp'      
Plug 'hrsh7th/cmp-buffer'       
Plug 'hrsh7th/cmp-path'          
Plug 'L3MON4D3/LuaSnip'          
Plug 'saadparwaiz1/cmp_luasnip'  

call plug#end()

"" Key maps
"" No arrows !!
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"" Open some-stuff keys
nnoremap <silent> ff :NERDTreeToggle<CR>

set termguicolors
colorscheme tokyonight-night

set colorcolumn=80
highlight ColorColumn ctermbg=gray

luafile ~/.config/nvim/lua/init.lua

