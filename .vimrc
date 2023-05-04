set autoindent
set smartindent
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
"color bracket
Plug 'luochen1990/rainbow'
"git
Plug 'airblade/vim-gitgutter'
"status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
call plug#end()

"rainbow
let g:rainbow_active = 1

"status
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

noremap <A-j> :bprev<CR>
noremap <A-k> :bnext<CR>
noremap <A-c> :bdelete<CR>
noremap <A-,> :bfirst<CR>
noremap <A-.> :blast<CR>

augroup keep_folds
    autocmd!
    "for keep fold
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent! loadview
augroup END

