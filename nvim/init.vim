" let g:python_host_prog = '/home/techgaun/.pyenv/versions/neovim2/bin/python'
" let g:python3_host_prog = '/home/techgaun/.pyenv/versions/neovim/bin/python'

if exists("$VIRTUAL_ENV")
    let g:python3_host_prog = substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
else
    let g:python3_host_prog = '/usr/bin/python3'
endif
let g:startify_custom_header = [
    \'',
    \'___________           .__                                ',
    \'\__    ___/___   ____ |  |__    _________   __ __  ____  ',
    \'  |    |_/ __ \_/ ___\|  |  \  / ___\__  \ |  |  \/    \ ',
    \'  |    |\  ___/\  \___|   Y  \/ /_/  > __ \|  |  /   |  \',
    \'  |____| \___  >\___  >___|  /\___  (____  /____/|___|  /',
    \'             \/     \/     \//_____/     \/           \/ ',
    \'    www.techgaun.com  https://github.com/techgaun        ',
    \]
let g:spacevim_enable_debug = 0
let g:spacevim_realtime_leader_guide = 1
let g:spacevim_default_indent = 2
let g:spacevim_max_column = 120
let g:spacevim_colorscheme = 'molokai'
let mapleader = ','
let localmapleader = ','
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#php')
call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('lang#lua')
call SpaceVim#layers#load('lang#perl')
call SpaceVim#layers#load('lang#swig')
call SpaceVim#layers#load('lang#rust')
call SpaceVim#layers#load('lang#java')
call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#xml')
call SpaceVim#layers#load('lang#haskell')
call SpaceVim#layers#load('lang#elixir')
call SpaceVim#layers#load('tools#screensaver')
call SpaceVim#layers#load('shell')   
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 0
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:neomake_vim_enabled_makers = ['vint']
" if has('python3')
    " let g:ctrlp_map = ''
    " nnoremap <silent> <C-p> :Denite file_rec<CR>
" endif
let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''

let g:spacevim_disabled_plugins=[
        \ ['floobits/floobits-neovim'],
    \ ]

let g:spacevim_custom_plugins = [
        \ ['powerman/vim-plugin-AnsiEsc'],
        \ ['scrooloose/nerdcommenter'],
        \ ['c-brenn/phoenix.vim', {'on_ft': 'elixir'}],
        \ ['mxw/vim-jsx', {'on_ft': ['javascript', 'javascript.jsx']}]
    \ ]

autocmd FileType elixir,sh,vim let g:NERDSpaceDelims = 1

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
  let g:ackprg = 'ag --vimgrep --smart-case'
  cnoreabbrev ag Ack
  cnoreabbrev aG Ack
  cnoreabbrev Ag Ack
  cnoreabbrev AG Ack
endif

let g:alchemist#elixir_erlang_src = "/home/techgaun/.asdf/installs/elixir"
let g:jsx_ext_required = 0

iabbrev adn and
iabbrev THis This
iabbrev THe The
iabbrev @@ samar+oss@techgaun.com
iabbrev ccopy Copyright 2017 techgaun, all rights reserved.
iabbrev mysite http://www.techgaun.com
iabbrev mygh https://github.com/techgaun
iabbrev mytw https://twitter.com/techgaun

map <Left> :echo "हुँदै हुँदैन!"<cr>
map <Right> :echo "हुँदै हुँदैन!"<cr>
map <Up> :echo "हुँदै हुँदैन!"<cr>
map <Down> :echo "हुँदै हुँदैन!"<cr>

nnoremap <leader>ev :vsplit ~/.SpaceVim.d/init.vim<cr>
nnoremap <leader>Sv :source ~/.SpaceVim.d/init.vim<cr>

autocmd FileType python nnoremap <Leader><Leader>= :0,$!yapf<CR>
