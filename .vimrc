hi Normal guibg=NONE ctermbg=NONE
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
set colorcolumn=100
set expandtab
set noshiftround
set cursorline
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
let g:indentLine_char_list = ['│']

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
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
" Initialize plugin system
call plug#end()
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu


" My Remaps
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap ç @
vnoremap <leader>p "_dP
" Remove trailing whitespace on F5
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

nnoremap <leader>gr :Rg<CR>
nnoremap gj :cn<CR>
nnoremap gk :cp<CR>

augroup highlight_current_word
  au!
  au CursorHold * :exec 'match Search /\V\<' . expand('<cword>') . '\>/'
augroup END
