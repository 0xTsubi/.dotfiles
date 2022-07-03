" personal nvim config
let mapleader = " "

" settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set exrc
set guicursor=n-v-c:block
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set expandtab
set smartindent 
set nu
set nowrap
set smartcase 
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80
set cmdheight=2
set updatetime=50
set shortmess+=c

" plugins
call plug#begin('~/.vim/plugged')
" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
" colorschemes
Plug 'sainnhe/everforest'
" co-pilot
Plug 'github/copilot.vim'
" auto-pairs (brackets, quotes, etc)
Plug 'jiangmiao/auto-pairs'
" auto-close tags
Plug 'windwp/nvim-ts-autotag'
" vim-table
Plug 'dhruvasagar/vim-table-mode'
call plug#end()

" colorscheme
colorscheme everforest

" remove background
highlight Normal guibg=none ctermbg=none
highlight LineNr guibg=none ctermbg=none
highlight Folded guibg=none ctermbg=none
highlight NonText guibg=none ctermbg=none
highlight SpecialKey guibg=none ctermbg=none
highlight VertSplit guibg=none ctermbg=none
highlight SignColumn guibg=none ctermbg=none
highlight EndOfBuffer guibg=none ctermbg=none

" remaps
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fh :Telescope help_tags<CR>

:lua require('nvim-ts-autotag').setup()
:lua require('plugins')
