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
set autoindent
set smartindent

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

""" Elixir Lang #elixir
let g:polyglot_disabled = ['elm', 'elixir']
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
autocmd FileType elixir setlocal omnifunc=elixircomplete#Complete
let g:alchemist#elixir_erlang_src = "/home/techgaun/.asdf/installs/elixir"

Plug 'c-brenn/phoenix.vim'

Plug 'sheerun/vim-polyglot'

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
autocmd! BufWritePost * Neomake
let g:neomake_elixir_enabled_makers = ['mix', 'credo']

Plug 'nathanaelkane/vim-indent-guides'
let indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#212121 ctermbg=233
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#404040 ctermbg=234

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['tag', 'file', 'neosnippet']
let g:deoplete#omni#functions = {}
let g:deoplete#omni#input_patterns = {}
let g:deoplete#enable_smart_case = 1
let g:deoplete#omni#functions.elixir = [
  \ 'elixircomplete#Complete'
\]

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'tomasr/molokai'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
autocmd FileType elixir,sh,vim let g:NERDSpaceDelims = 1

Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'luna'
let g:bufferline_echo = 0
let g:airline_enable_branch=1
let g:airline_powerline_fonts=1

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

set background=dark
syntax enable
colorscheme molokai

map <Left> :echo "हुँदै हुँदैन!"<cr>
map <Right> :echo "हुँदै हुँदैन!"<cr>
map <Up> :echo "हुँदै हुँदैन!"<cr>
map <Down> :echo "हुँदै हुँदैन!"<cr>

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

let g:SuperTabContextDiscoverDiscovery = ["&omnifunc:<c-x><c-o>"]
autocmd FileType *
      \ if &omnifunc != '' |
      \ call SuperTabChain(&omnifunc, "<c-p>") |
      \ call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
      \ endif
