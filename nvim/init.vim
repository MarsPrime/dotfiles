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
Plug 'folke/tokyonight.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-finder'

Plug 'hrsh7th/cmp-nvim-lsp'      " источник: LSP
Plug 'hrsh7th/cmp-buffer'        " источник: текст буфера
Plug 'hrsh7th/cmp-path'          " источник: пути
Plug 'L3MON4D3/LuaSnip'          " snippets движок
Plug 'saadparwaiz1/cmp_luasnip'  " источник: LuaSnip
call plug#end()

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set termguicolors
colorscheme tokyonight-night

set colorcolumn=80
highlight ColorColumn ctermbg=gray

luafile ~/.config/nvim/lua/init.lua

