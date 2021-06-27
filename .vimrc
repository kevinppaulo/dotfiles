set nocompatible
filetype off
syntax on
filetype plugin indent on
let mapleader = " "
set modelines=0
set nu
set rnu
set nowrap
set ruler
set noerrorbells
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set scrolloff=8
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
set path=$PWD/**        " enable fuzzy finding in the vim command line
set wildmenu            " enable fuzzy menu
set wildignore+=**/.git/**,**/__pycache__/**,**/venv/**,**/node_modules/**,**/dist/**,**/build/**,*.o,*.pyc,*.swp
set hidden

" Rendering
set ttyfast

" Status bar
" set laststatus=2

" Last line
set showmode
set showcmd
set nohls
set incsearch
set ignorecase
set smartcase
set showmatch

let NERDTreeMinimalUI=1

" Plugin Management
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'ayu-theme/ayu-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
" Initialize plugin system
call plug#end()
set termguicolors     " enable true colors support
colorscheme ayu

" My Remaps
 nnoremap <C-b> :NERDTreeToggle<CR>
 nnoremap <C-p> :GFiles<CR>

hi Normal guibg=NONE ctermbg=NONE
