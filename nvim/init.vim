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
if has('python3')
    let g:ctrlp_map = ''
    nnoremap <silent> <C-p> :Denite file_rec<CR>
endif
let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''

let g:spacevim_disabled_plugins=[]

let g:spacevim_custom_plugins = [
        \ ['powerman/vim-plugin-AnsiEsc'],
        \ ['scrooloose/nerdcommenter']
    \ ]

autocmd FileType elixir,sh,vim let g:NERDSpaceDelims = 1
