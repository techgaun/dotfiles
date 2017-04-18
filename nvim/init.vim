scriptencoding utf-8

" my nvim configuration playing with nvim

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set textwidth=120
set formatoptions=tcrq
set backupcopy=yes

set hlsearch
set incsearch
set ignorecase smartcase
set title
set number

syntax on

let g:mapleader = ','
let g:maplocalleader = ','

inoremap jk <ESC>

set omnifunc=syntaxcomplete#Complete

call plug#begin()

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-projectionist'  " also required for c-brenn/phoenix.vim
Plug 'powerman/vim-plugin-AnsiEsc'

""" Programming Languages #proglang
Plug 'fatih/vim-go'

Plug 'sheerun/vim-polyglot'

""" Elixir Lang #elixir
let g:polyglot_disabled = ['elm', 'elixir']
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
autocmd FileType elixir setlocal omnifunc=elixircomplete#Complete
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.elixir = '[^.[:digit:] *\t]\.'
let g:alchemist#elixir_erlang_src = "/home/techgaun/.asdf/installs/elixir"

Plug 'c-brenn/phoenix.vim'

""" Javascript #js
Plug 'mxw/vim-jsx'
Plug 'flowtype/vim-flow'

""" HTML/CSS #htmlcss
Plug 'ap/vim-css-color'

""" Editor and enhancements #editor
Plug 'editorconfig/editorconfig-vim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Plug 'neomake/neomake'
let g:neomake_elixir_enabled_makers = ['mix', 'credo']

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['file', 'neosnippet']
let g:deoplete#omni#functions = {}
let g:deoplete#omni#input_patterns = {}

Plug 'tomasr/molokai'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
autocmd FileType elixir,sh let g:NERDSpaceDelims = 1
Plug 'tpope/vim-surround'

""" Navigation #nav
Plug 'ctrlpvim/ctrlp.vim'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
  let g:ackprg = 'ag --vimgrep --smart-case'
  cnoreabbrev ag Ack
  cnoreabbrev aG Ack
  cnoreabbrev Ag Ack
  cnoreabbrev AG Ack
endif

Plug 'dietsche/vim-lastplace'
Plug 'ludovicchabant/vim-gutentags'
let g:gutentags_cache_dir = '~/.tags_cache'

call plug#end()

colorscheme molokai
