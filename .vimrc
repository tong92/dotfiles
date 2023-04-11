set autoindent
set expandtab "tab to space
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4
filetype on
filetype plugin on
filetype indent on

set number
set ruler
set wildmenu
set cursorline
set cursorcolumn
set title

set encoding=utf-8
syntax enable

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'tpope/vim-sensible' 
Plug 'nvim-lua/plenary.nvim'
Plug 'scalameta/nvim-metals'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

"UI
Plug 'petertriho/nvim-scrollbar'
"color scheme
Plug 'jacoborus/tender.vim'

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
call plug#end()

