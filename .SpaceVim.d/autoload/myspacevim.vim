scriptencoding utf-8

function! myspacevim#before() abort
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set textwidth=120
  set nofoldenable
  " set icm=split
  set wrap
  let g:spacevim_enable_guicolors = 0

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

  let g:ale_elixir_elixir_ls_release = $HOME."/projects/elixir-ls/rel"
  let g:ale_linters = {
        \   'elixir': ['credo', 'dialyxir', 'elixir-ls']
        \}

  let g:ale_fixers = {
        \   'javascript': ['eslint'],
        \}

  let g:spacevim_enable_vimfiler_welcome = 1
  let g:spacevim_enable_debug = 0
  let g:spacevim_enable_tabline_filetype_icon = 1
  let g:spacevim_enable_os_fileformat_icon = 1
  let g:spacevim_buffer_index_type = 1
  let g:neomake_vim_enabled_makers = ['vint']
  let g:vim_json_syntax_conceal = 0
  let g:indentLine_color_term = 130
  let g:indentLine_char = '¦'

  " goyo settings
  let g:goyo_width = 110
  let g:goyo_height = '90%'

  let g:clang2_placeholder_next = ''
  let g:clang2_placeholder_prev = ''
  let g:deoplete#sources#clang#executable = '/usr/bin/clang-4.0'

  augroup NERDCommenter
    autocmd FileType elixir,sh,vim let g:NERDSpaceDelims = 1
  augroup end

  if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
    let g:ackprg = 'ag --vimgrep --smart-case'
    cnoreabbrev ag Ack
    cnoreabbrev aG Ack
    cnoreabbrev Ag Ack
    cnoreabbrev AG Ack
  endif

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

  nnoremap <leader>ev :vsplit ~/.SpaceVim.d/init.toml<cr>
  nnoremap <leader>Sv :source ~/.SpaceVim.d/init.toml<cr>
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
    \ ])

  let g:chromatica#libclang_path = '/usr/lib/x86_64-linux-gnu/libclang-4.0.so.1'

  " terraform configs
  let g:terraform_align=1
  let g:terraform_fmt_on_save=1
  " call deoplete#custom#option('omni_patterns', {
  "     \ 'terraform': '[^ *\t"{=$]\w*',
  "   \})

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

  let g:prettier#autoformat_require_pragma = 0
endfunction
