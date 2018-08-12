scriptencoding utf-8
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=120
set nofoldenable
set icm=split
let g:spacevim_enable_guicolors = 0

" let g:python_host_prog = '/home/techgaun/.pyenv/versions/neovim2/bin/python'
" let g:python3_host_prog = '/home/techgaun/.pyenv/versions/neovim/bin/python'

if exists('$VIRTUAL_ENV')
    let g:python3_host_prog = substitute(system('which -a python3 | head -n2 | tail -n1'), '\n', '', 'g')
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
let g:mapleader = ','
let g:localmapleader = ','
let g:LanguageClient_autoStart = 1
let g:spacevim_lint_on_save = 1
let g:spacevim_auto_disable_touchpad = 0
let g:spacevim_enable_neomake = 0
let g:spacevim_enable_ale = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_linters = {
      \   'elixir': ['credo', 'dialyxir']
      \}

let g:ale_fixers = {
      \   'javascript': ['eslint'],
      \}

call SpaceVim#layers#load('autocomplete')
call SpaceVim#layers#load('checkers', { 'show_cursor_error': 0 })
call SpaceVim#layers#load('colorscheme')
call SpaceVim#layers#load('cscope')
" call SpaceVim#layers#load('ctrlp')
call SpaceVim#layers#load('denite')
" call SpaceVim#layers#load('fzf')
call SpaceVim#layers#load('git')
call SpaceVim#layers#load('github')
call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('lang#elixir')
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#haskell')
call SpaceVim#layers#load('lang#html')
call SpaceVim#layers#load('lang#java')
call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('lang#json')
call SpaceVim#layers#load('lang#kotlin')
call SpaceVim#layers#load('lang#lua')
call SpaceVim#layers#load('lang#markdown')
call SpaceVim#layers#load('lang#ocaml')
call SpaceVim#layers#load('lang#perl')
call SpaceVim#layers#load('lang#php')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#rust')
call SpaceVim#layers#load('lang#sh')
call SpaceVim#layers#load('lang#solidity')
call SpaceVim#layers#load('lang#swig')
call SpaceVim#layers#load('lang#tmux')
call SpaceVim#layers#load('lang#typescript')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#xml')
call SpaceVim#layers#load('lsp')
call SpaceVim#layers#load('shell')
call SpaceVim#layers#load('tags')
call SpaceVim#layers#load('tmux')
call SpaceVim#layers#load('tools')
call SpaceVim#layers#load('VersionControl')

call SpaceVim#layers#disable('chat')

" let g:gutentags_ctags_executable = 'gtags'
" let g:tagbar_ctags_bin = 'gtags'
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 0
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:neomake_vim_enabled_makers = ['vint']
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:vim_json_syntax_conceal = 0
let g:indentLine_color_term = 130
let g:indentLine_char = '¦'

" goyo settings
let g:goyo_width = 110
let g:goyo_height = '90%'

" let g:ctrlp_map = '<c-p>'

" if has('python3')
    " let g:ctrlp_map = ''
    " nnoremap <silent> <C-p> :Denite file_rec<CR>
" endif
let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''
let g:deoplete#sources#clang#executable = '/usr/bin/clang-4.0'

let g:spacevim_disabled_plugins=[
        \ ['floobits/floobits-neovim'],
        \ ['vim-chat/vim-chat'],
        \ ['itchyny/screensaver.vim'],
        \ ['vimcn/vimcdoc'],
        \ ['junegunn/vim-emoji'],
        \ ['SpaceVim/LanguageClient-neovim'],
        \ ['lymslive/vimloo'],
        \ ['lymslive/vnote'],
        \ ['wsdjeg/Mysql.vim'],
        \ ['bbchung/Clamp']
    \ ]

let g:spacevim_custom_plugins = [
        \ ['powerman/vim-plugin-AnsiEsc'],
        \ ['c-brenn/phoenix.vim'],
        \ ['mxw/vim-jsx', {'on_ft': ['javascript', 'javascript.jsx']}],
        \ ['haya14busa/dein-command.vim'],
        \ ['tpope/vim-eunuch'],
        \ ['junegunn/fzf.vim'],
        \ ['prettier/vim-prettier', {'on_ft': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown'], 'build': 'yarn install'}],
        \ ['lifepillar/pgsql.vim', {'on_ft': ['sql']}]
    \ ]

augroup NERDCommenter
  autocmd FileType elixir,sh,vim let g:NERDSpaceDelims = 1
augroup end

" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
  let g:ackprg = 'ag --vimgrep --smart-case'
  cnoreabbrev ag Ack
  cnoreabbrev aG Ack
  cnoreabbrev Ag Ack
  cnoreabbrev AG Ack
endif

let g:alchemist#elixir_erlang_src = '/home/techgaun/.asdf/installs/elixir'
let g:alchemist_tag_map = '<space>ld'
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
nnoremap <leader>jt :! find . -type f -iregex ".*\.js$" -not -path "./node_modules/*" -exec jsctags {} -f \; \| sed '/^$/d' \| sort > tags

augroup fmtpy
  autocmd FileType python nnoremap <Leader><Leader>= :0,$!yapf<CR>
augroup END

" ctags stuff
let g:tagbar_type_ansible = {
	\ 'ctagstype' : 'ansible',
	\ 'kinds' : [
		\ 't:tasks'
	\ ],
	\ 'sort' : 0
  \ }

let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
    \ }

let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
    \ }

let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records',
        \ 't:tests'
    \ ]
    \ }

let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
    \ }

let g:tagbar_type_puppet = {
    \ 'ctagstype': 'puppet',
    \ 'kinds': [
        \'c:class',
        \'s:site',
        \'n:node',
        \'d:definition'
      \]
    \}

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
    \ }

let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits',
        \'i:impls,trait implementations',
    \]
    \}

let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
  \ }

let g:vimfiler_ignore_pattern = get(g:, 'vimfiler_ignore_pattern', [
      \ '^\.git$',
      \ '^\.DS_Store$',
      \ '^\.init\.vim-rplugin\~$',
      \ '^\.netrwhist$',
      \ '\.class$',
      \])

let g:chromatica#libclang_path = '/usr/lib/x86_64-linux-gnu/libclang-4.0.so.1'

" https://github.com/JakeBecker/elixir-ls/issues/35#issuecomment-351522003
" augroup elixir_lsp
"   au!
"   au User lsp_setup call lsp#register_server({
"     \ 'name': 'elixir-ls',
"     \ 'cmd': {server_info->[&shell, &shellcmdflag, 'env ERL_LIBS=/home/techgaun/projects/elixir-ls/lsp mix elixir_ls.language_server']},
"     \ 'whitelist': ['elixir', 'eelixir'],
"     \ })
" augroup END

imap <C-b> @tag :wipa
imap <C-x> require IEx; IEx.pry
nnoremap ,b O@tag :wipa<esc>
