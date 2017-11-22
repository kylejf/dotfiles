set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()            " required
filetype plugin indent on    " required

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ackprg = 'ag --nogroup --nocolor --column'

syntax on
set modelines=0

set number        " Show line numbers

set ruler

set visualbell

set cursorline

set encoding=utf-8

set wrap

set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>
runtime! macros/matchit.vim

nnoremap j gj

set hidden

set laststatus=2

set showmode
set showcmd

nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set spell
set showmatch
map<leader><space> :let @/=''<cr> " clear search

inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>


map <leader>q gqp

set nolist

set nowrap
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4


set term=screen-256color

syntax enable     " Use syntax highlighting
set background=dark
let g:solarized_termtrans=0
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
let g:solarized_termcolors = 256
colorscheme solarized

let g:ycm_confirm_extra_conf=0

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <Space>d :YcmCompleter GoTo<CR>
nnoremap <Space>w :w<CR>
nnoremap <space>W :wa<CR>
nnoremap <Space>q :q<CR>
nnoremap <Space>a :Ack!<CR>
inoremap jk <Esc>
