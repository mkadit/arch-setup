"___  ___ _   __  ___      _ _ _
"|  \/  || | / / / _ \    | (_) |
"| .  . || |/ / / /_\ \ __| |_| |_
"| |\/| ||    \ |  _  |/ _` | | __|
"| |  | || |\  \| | | | (_| | | |_
"\_|  |_/\_| \_/\_| |_/\__,_|_|\__|

" change leader key
let g:mapleader=" "

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

""""""""""""""""""""""""""""""""""""""""""""""
" Managing Plugins using plug-in
""""""""""""""""""""""""""""""""""""""""""""""

"Plugins folder
call plug#begin('~/.config/nvim/plugged')

" { Files Management }
Plug 'mhinz/vim-startify'
Plug 'vifm/vifm.vim'

" {Version Control }
Plug 'tpope/vim-fugitive'
Plug 'stsewd/fzf-checkout.vim'
Plug 'airblade/vim-gitgutter'
Plug 'https://github.com/mbbill/undotree'

" { Syntax and highlighting }
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

" { Intellisense }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" { Documentation / Task management }
Plug 'vimwiki/vimwiki'
Plug 'liuchengxu/vim-which-key'

" { Make life easier}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'

Plug 'liuchengxu/vista.vim'
Plug 'szw/vim-maximizer'
Plug 'mzlogin/vim-markdown-toc'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'blueyed/vim-diminactive'
Plug 'turbio/bracey.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

 " { Aesthetics }
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'edkolev/tmuxline.vim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'rafi/awesome-vim-colorschemes'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/forest-night'

" {defx}
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'


" " { Just in case }
" Plug 'dstein64/vim-startuptime'
Plug 'airblade/vim-rooter'
Plug 'vim-scripts/LargeFile'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
filetype plugin indent on
if has('termguicolors')
  set termguicolors
  hi LineNr ctermbg=NONE guibg=NONE
endif

"hi normal guibg=NONE ctermbg=NONE
colorscheme sonokai
set nocompatible
set t_ut=
set ttyfast
set lazyredraw
set noerrorbells
set visualbell
set t_vb=
set laststatus=2
set nocursorline
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set encoding=utf-8
set hidden
set clipboard+=unnamedplus
set splitbelow splitright

" set defautl tabs to have 4 spaces
set sw=4 ts=4 sts=4 expandtab smarttab autoindent
" show the matching part of the pair for [] {} and ()
set showmatch
"set colorcolumn=80

" Set the minimal number of lines under the cursor
set scrolloff=2

" Set so vim search (/ or ?) be case insensitive
set ignorecase smartcase

" Set hybrid line number
set number relativenumber

" Enable autocomplete
set wildmenu
set wildmode=longest:full,full

" Set new split below or right
set splitbelow splitright

" ignore autocomplete *.class files
set wildignore=*.class

" navigate with mouse
set mouse=a

" show special characters
set list
set listchars=tab:›\ ,nbsp:␣,trail:•,extends:»,precedes:«
set fillchars+=vert:│

" highlight all search matches
set hlsearch
set incsearch

" Show tab bar
set showtabline=2

set noshowmode
" tell vim where to put swap files
"set dir=~/.swapdir
"set directory^=$HOME/.vim/swap//
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""""""""""""""""""

" { File Management }

""""" Vifm
" Vifm mapkeys
map <leader>vi :Vifm<CR>
map <leader>vv :VsplitVifm<CR>
map <leader>vs :SplitVifm<CR>
map <leader>vd :DiffVifm<CR>
map <leader>vt :TabVifm<CR>

""""" Startify
" Copyright
let g:ascii = [
			\'_______  _        _______  ______  __________________',
			\'(       )| \    /\(  ___  )(  __  \ \__   __/\__   __/',
			\'| () () ||  \  / /| (   ) || (  \  )   ) (      ) (   ',
			\'| || || ||  (_/ / | (___) || |   ) |   | |      | |   ',
			\'| |(_)| ||   _ (  |  ___  || |   | |   | |      | |   ',
			\'| |   | ||  ( \ \ | (   ) || |   ) |   | |      | |   ',
			\'| )   ( ||  /  \ \| )   ( || (__/  )___) (___   | |   ',
			\'|/     \||_/    \/|/     \|(______/ \_______/   )_(   ',
			\'
            \']

let g:startify_custom_header =
            \'startify#center(g:ascii +startify#fortune#quote())'

"vim startify sessions
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_session_delete_buffers = 1
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
"let g:startify_session_sort = 1


"Map keys
nmap <leader>sc :SClose<CR>
nmap <leader>ss :SSave<Space>
nmap <leader>sl :SLoad<Space>
nmap <leader>sd :SDelete<Space>

" menus
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
"bookmarks
let g:startify_bookmarks = [
            \ { 'c': '~/.config/' },
            \ { 'C': '~/College/' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ ]


" { Version Control }
""" vim-fugitive plugin
" vim fugitive mapkeys
map <Leader>gs :G<CR>
map <Leader>gD :GdiffSplit<CR>
map <Leader>gb :Gblame<CR>
map <Leader>gf :GBranches<CR>
map <Leader>gl :Git log<CR>
map <Leader>gj :diffget //2<CR>
map <Leader>gk :diffget //3<CR>

"Open Undo tree
nnoremap <leader>eu :UndotreeToggle<CR>
nnoremap <leader>ef :UndotreeFocus<CR>

""" Defx
" nnoremap <leader>n :Defx`expand('%:p:h')` -search=`expand('%:p')` -buffer-name=defx<CR>
nnoremap <leader>n :Defx<CR>

if exists('g:plugs["defx.nvim"]')
  autocmd FileType     defx call s:defx_my_settings()
  autocmd BufWritePost *    call defx#redraw()
  autocmd BufEnter     *    call s:open_defx_if_directory()

  call defx#custom#option('_', {
    \ 'winwidth'           : 40,
    \ 'split'              : 'vertical',
    \ 'direction'          : 'topleft',
    \ 'buffer_name'        : 'defx',
    \ 'columns'            : 'git:indent:icons:filename',
    \ 'show_ignored_files' : 0,
    \ 'toggle'             : 1,
    \ 'resume'             : 1,
    \ 'auto_cd'            : 1,
    \ })

  call defx#custom#column('icon', {
    \ 'directory_icon' : ' ',
    \ 'opened_icon'    : ' ',
    \ })

  call defx#custom#column('filename', {
    \ 'min_width': 40,
    \ 'max_width': 1000,
    \ })

  " Open Defx when open a directory
  function! s:open_defx_if_directory()
    try
      let l:full_path = expand(expand('%:p'))
    catch
      return
    endtry

    if isdirectory(l:full_path)
      execute "Defx `expand('%:p')` | bd " . expand('%:r')
    endif
  endfunction

  function! s:defx_my_settings() abort
    " Define mappings
    nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')
    nnoremap <silent><buffer><expr> <2-LeftMouse>
    \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> <2-RightMouse>
    \ defx#do_action('open_or_close_tree')
    nnoremap <silent><buffer><expr> c
    \ defx#do_action('copy')
    nnoremap <silent><buffer><expr> m
    \ defx#do_action('move')
    nnoremap <silent><buffer><expr> p
    \ defx#do_action('paste')
    nnoremap <silent><buffer><expr> V
    \ defx#do_action('drop', 'vsplit')
    nnoremap <silent><buffer><expr> S
    \ defx#do_action('drop', 'split')
    nnoremap <silent><buffer><expr> P
    \ defx#do_action('open', 'pedit')
    nnoremap <silent><buffer><expr> o
    \ defx#do_action('open_or_close_tree')
    nnoremap <silent><buffer><expr> D
    \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N
    \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> M
    \ defx#do_action('new_multiple_files')
    nnoremap <silent><buffer><expr> T
    \ defx#do_action('toggle_sort', 'time')
    nnoremap <silent><buffer><expr> d
    \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
    \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> !
    \ defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> x
    \ defx#do_action('execute_system')
    nnoremap <silent><buffer><expr> yp
    \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> .
    \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> ;
    \ defx#do_action('repeat')
    nnoremap <silent><buffer><expr> <Backspace>
    \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~
    \ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q
    \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space>
    \ defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> *
    \ defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> j
    \ line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k
    \ line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> <C-r>
    \ defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <C-g>
    \ defx#do_action('print')
    nnoremap <silent><buffer><expr> cd
    \ defx#do_action('change_vim_cwd')
  endfunction

endif


" { Syntax and highlighting }

""""" ALE
" Settings
let g:ale_linters = {
			\ 'javascript': ['eslint'],
			\ 'python': ['pylint'],
            \ 'cs': ['OmniSharp'],
			\}
let g:ale_fixers = {
			\ 'javascript': ['prettier', 'eslint'],
			\ 'python': ['isort', 'autopep8'],
			\}
" let g:ale_python_pylint_options = '--load-plugins pylint_django -d missing-docstring'

let g:ale_set_signs = 0
highlight error ctermbg=88
highlight SpellBad ctermbg=88
highlight todo ctermbg=100
highlight SpellCap ctermbg=100


""" Treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

" { Intellisense }
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for goton
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
nnoremap <leader>rp :CocSearch <C-R>=expand("<cword>")<CR><CR>

" Use K to show documentation in preview window
nnoremap <silent> <leader>ch :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for format selected region
"xmap <leader>mf  <Plug>(coc-format-selected)
"nmap <leader>mf  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>cl  :<C-u>CocList<cr>
nnoremap <silent> <leader>ca  :<C-u>CocAction<cr>
nnoremap <silent> <leader>cd  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>co  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader>cp  :<C-u>CocListResume<CR>
" Show extension market
map <silent> <leader>cm :<C-u>CocList marketplace<CR>

nnoremap <silent> <leader>cr :<C-u>CocRestart<CR>
nnoremap <silent> <leader>cL <Plug>(coc-codelens-action)

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" { Documentation }

""" VimWiki
" Ensure files are read as what I want:
let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_list = [{'path': '~/Documents/vimwiki'}]
let g:vimwiki_table_mappings=0


nnoremap <leader>m :MaximizerToggle!<CR>

""""" vim-which-key
nnoremap <silent> <leader> :<c-u>WhichKey ' '<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ' '<CR>
call which_key#register(' ', "g:which_key_map")
set timeoutlen=300
" Define prefix dictionary
let g:which_key_map =  {}
let g:which_key_map.n ={
            \ 'name' : 'Explorer'
            \}
let g:which_key_map.v = {
      \ 'name' : '+Vifm' ,
      \ 'i' : ['Vifm', 'Open file via vifm'],
	  \ 'v' : ['VSplitVifm', 'VSplit via vifm '],
      \ 's' : ['SplitVifm', 'Split file via vifm'],
      \ 'd' : ['DiffVifm', 'Diff files via vifm'],
      \ 't' : ['TabVifm', 'OpenTab files vifm'],
      \ }
let g:which_key_map.s = {
      \ 'name' : '+Sessions' ,
      \ 'c' : ['SClose', 'Return to homepage'],
      \ 's' : ['SSave', 'Save Session'],
      \ 'l' : ['SLoad', 'Load Session'],
      \ 'd' : ['SDelete', 'Delete Session'],
      \ }

let g:which_key_map.g = {
      \ 'name' : '+Git/Goto' ,
      \ 's' : ['G', 'Git Status'],
      \ 'D' : ['GdiffSplit', 'Open diff in split'],
      \ 'b' : ['Gblame', 'Git blame'],
      \ 'f' : ['GBranches', 'Change branch'],
      \ 'l' : ['Git log', 'Git log'],
      \ 'j' : ['diffget //2', 'Get left'],
      \ 'k' : ['diffget //3', 'Get right'],
      \ 'g[' : ['coc-diagnostic-prev', 'Go to previous error'],
      \ 'g]' : ['coc-diagnostic-next', 'Go to next error'],
      \ 'd' : ['coc-definition', 'Go to definition'],
      \ 'y' : ['coc-type-definition', 'Go to type definition'],
      \ 'i' : ['coc-implementation', 'Go to implementation'],
      \ 'r' : ['coc-references', 'Go to references'],
      \ }

let g:which_key_map.c = {
      \ 'name' : '+COC',
      \ 'l' : ['CocList', 'Search all List'],
	  \ 'a' : ['CocList diagnostic', 'COC show all diagnostic'],
	  \ 'e' : ['CocList extension', 'COC manage extension'],
	  \ 'c' : ['CocList commands', 'COC command'],
	  \ 'h' : ['show documentation' , 'show documentation'],
	  \ 'o' : ['CocList outline', 'COC find symbol of current document'],
	  \ 's' : ['CocList -I symbols', 'search workspace for symbols'],
	  \ 'j' : ['CocNext', 'do default action for next item'],
	  \ 'k' : ['CocPrev', 'do default action for previous item'],
	  \ 'p' : ['CocListResume', 'resume latest coc list'],
      \ 'm' : ['Marketplace', 'Search for coc extensions'],
      \ 'r' : ['CocRestart', 'Restart coc'],
      \ }

let g:which_key_map.r = {
      \ 'name' : '+Rename' ,
      \ 't' : ['t', 'Trim Whitespace'],
	  \ 'n' : ['coc-rename', 'rename current word'],
	  \ 'r' : ['so $MYVIMRC', 'Load vimrc'],
	  \ 'e' : ['coc-rename', 'rename current word'],
	  \ 'p' : ['CocSearch', 'Get all occurence of word in project'],
      \ }


let g:which_key_map.f = {
        \ 'name' : '+FZF',
        \ 'i' : ['Files', 'Search for files'],
        \ 'bl' : ['Buffer', 'Search for buffer'],
        \ 'gl' : ['GFiles', 'Git list'],
        \ 'gs' : ['GFiles?', 'Git status'],
        \ 'rg' : ['Rg', 'Search for content'],
        \ 'lb' : ['Lines', 'Search for line in all buffers file'],
        \ 'cb' : ['Fcb', 'Search for line in active buffers'],
        \ 'm' : ['Marks', 'Search for marks'],
        \ 'w' : ['Windows', 'Search for windows/tabs'],
        \ 'hf' : ['History', 'Search file history'],
        \ 'hc' : ['History:', 'Search command history'],
        \ 'hs' : ['History/', 'Search history'],
        \ 's' : ['Snippets', 'Search for Snippets'],
        \ 'co' : ['Commits', 'Search Colourscheme'],
        \ 'cc' : ['Commits', 'Search Commits in file'],
        \ 'bc' : ['BCommits', 'Search Commits in buffers'],
        \ 'a' : ['Commands', 'Search Action/Command'],
        \ 'M' : ['Maps', 'Search for mappings'],
        \ 't' : ['Vista finder', 'Search for function/class in file'],
        \}

let g:which_key_map.t = {
            \ 'name' : 'Vista',
			\ 't' : ['Vista!!', 'Show all function/class based on tags'],
			\ 'c' : ['Vista coc', 'Show all function/class based on lsp(coc)'],
			\ 'm' : ['Vista toc', 'Show markdown toc'],
			\ 'f' : ['Vista focus', 'Jump to tagbar'],
            \}

let g:which_key_map.e = {
      \ 'name' : '+etc',
      \ 'c' : ['Compile','Compile document'],
      \ 'p' : ['Preview document' ,'Preview file'],
      \ 'u' : ['UndotreeToggle', 'Open Undo Tree'],
      \ 'g' : ['Magit', 'Open Git Tree'],
      \ 'd' : ['Search meaning','Search prompt word'],
      \ 'D' : ['Search meaning','Search current word'],
      \ 's' : ['Search synonym', 'Search prompt synonym'],
      \ 'S' : ['Search synonym', 'Search current synonym'],
      \ 'e' : ['SClose', "Exit Session"],
      \ 'a' : ['DogeGenerate', 'Generate documentation'],
      \ 'f' : ['UndotreeFocus', 'Jump to Undotree'],
      \ 't' : ['t', 'Trim Whitespace'],
      \}
" { Make life easier }
""""" FZF
" fzf plugin
set rtp+=~/.fzf
" Rg Setting
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
  \   <bang>0)
"fzf mappings
nnoremap <leader>fi :Files<CR>
nnoremap <leader>fbl :Buffer<CR>
nnoremap <leader>fgl :GFiles<CR>
nnoremap <leader>fgs :GFiles?<CR>
nnoremap <leader>frg :Rg<CR>
nnoremap <leader>fcs :CocCommand<CR>
nnoremap <leader>flb :Lines<CR>
nnoremap <leader>fcb :BLines<CR>
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>fw :Windows<CR>
nnoremap <leader>fhf :History<CR>
nnoremap <leader>fhc :History:<CR>
nnoremap <leader>fhs :History/<CR>
nnoremap <leader>fhh :Help<CR>
nnoremap <leader>fs :CocList snippets<CR>
nnoremap <leader>fcc :Commits<CR>
nnoremap <leader>fco :Colors<CR>
nnoremap <leader>fbc :BCommits<CR>
nnoremap <leader>fa :Commands<CR>
nnoremap <leader>fM :Maps<CR>
" Needed Vista
nnoremap <leader>ft :Vista finder<CR> 
nnoremap <leader>fo :Vista finder coc<CR> 

""" Emmet vim
let g:user_emmet_leader_key=','

""" Vim-vista
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

nnoremap <leader>tt :Vista!!<CR>
nnoremap <leader>tc :Vista coc<CR>
nnoremap <leader>tm :Vista toc<CR>
nnoremap <leader>tf :Vista focus<CR>


""" Vim-markdown preview
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false
    \ }
let g:mkdp_browser = 'google-chrome-stable'

""" colorizer
lua require'colorizer'.setup()

" { Aesthetics }
""""" lightline
let g:lightline = {
  \	'colorscheme': 'sonokai',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['fugitive','readonly'], ['cocstatus', 'readonly'], ['filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['charvaluehex','fileformat', 'fileencoding']]
  \     },
  \	'component_function': {
  \     'fugitive': 'LightlineFugitive',
  \     'readonly': 'LightlineReadonly',
  \     'modified': 'LightlineModified',
  \     'fileformat': 'LightlineFileFormat',
  \     'filetype': 'LightlineFileType',
  \     'cocstatus': 'coc#status'
  \
  \		},
  \'component': {
  \     'lineinfo': ' %3l:%-2v',
  \     'filename': '%<%f'
  \     },
  \ }

let g:lightline.separator = {
\   'left': '', 'right': '',
\}
let g:lightline.subseparator = {
\   'left': '', 'right': '',
\}
let g:lightline.tabline = {
\   'left': [['buffers']],
\   'right': [['close']],
\}
let g:lightline.component_expand = {
\   'buffers': 'lightline#bufferline#buffers',
\}
let g:lightline.component_type = {
\   'buffers': 'tabsel',
\}
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#filename_modifier = ':te'
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

""" Tmuxline
let g:tmuxline_preset = {
    \'a'    : '#S',
    \'b'    : '%R',
    \'c'    : [ '#{sysstat_mem} #[fg=blue]\ufa51#{upload_speed}' ],
    \'win'  : [ '#I', '#W' ],
    \'cwin' : [ '#I', '#W', '#F' ],
    \'x'    : [ "#[fg=blue]#{download_speed} \uf6d9 #{sysstat_cpu}" ],
    \'y'    : [ '%a' ],
    \'z'    : '#H #{prefix_highlight}'
    \}
let g:tmuxline_separators = {
    \ 'left' : "\ue0bc",
    \ 'left_alt': "\ue0bd",
    \ 'right' : "\ue0ba",
    \ 'right_alt' : "\ue0bd",
    \ 'space' : ' '}

function! LightlineModified()
  return &modified ? '●' : ''
endfunction

function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return fugitive#head()
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

" autoreload
command! LightlineReload call LightlineReload()

function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction



""""""""""""""""""""""""""""""""""""""""""""""
" System Mapping
""""""""""""""""""""""""""""""""""""""""""""""
" change indent in visual mode
vnoremap > >gv
vnoremap < <gv

" file binding
noremap <S-z><S-a> :wa<CR>
noremap <C-q> :q<CR>

" split binding
noremap <C-S-h> gT
noremap <C-S-l> gt

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" resize splits with arrow keys
noremap <C-A-Left>	:vertical:resize -1<CR>
noremap <C-A-Down>	:resize +1<CR>
noremap <C-A-Up>	:resize -1<CR>
noremap <C-A-Right>	:vertical:resize +1<CR>

" Close buffer
nnoremap <Leader>bd :bd<CR>

"netrw
"noremap <Leader>n :Vexplore<CR>


" reload vimrc
nnoremap <Leader>re :e ~/.config/nvim/init.vim<CR>
nnoremap <Leader>rr :so $MYVIMRC<CR>

" hide search results
map <Esc><Esc> :nohlsearch<CR>


" Buffers and Tabs
nnoremap <C-A-j> :bprevious<CR>
nnoremap <C-A-k> :bnext<CR>
nnoremap <C-n> :bprevious<CR>
nnoremap <C-m> :bnext<CR>
nnoremap <C-A-h> :tabprevious<CR>
nnoremap <C-A-l> :tabnext<CR>
nnoremap <silent> <A-left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>ec :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
map <leader>ep :!opout <c-r>%<CR><CRj

""""""""""""""""""""""""""""""""""""""""""""""
" Configs
""""""""""""""""""""""""""""""""""""""""""""""

augroup autoSaveFolds
  autocmd!
  autocmd BufWinLeave * silent! mkview
  autocmd BufWinEnter * silent! loadview
augroup END

augroup goodbye_netrw
  au!
  autocmd VimEnter * silent! au! FileExplorer *
augroup END

inoremap <C-v> <ESC>"*p
vnoremap <C-c> "+y
vnoremap <C-d> "+d

"autocmd VimEnter * if !argc() | Explore | endif
"autocmd VimEnter * if isdirectory(expand('<afile>')) | Explore | endif

" Automatically change the current directory
" autocmd BufEnter * silent! lcd %:p:h
" autocmd BufEnter * :Rooter

" let g:cursorhold_updatetime = 100

" {PATH}
let g:coc_node_path = '/usr/bin/node'
let g:python3_host_prog = expand('/usr/bin/python3.8')
