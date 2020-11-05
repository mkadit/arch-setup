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
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
Plug 'stsewd/fzf-checkout.vim'
Plug 'airblade/vim-gitgutter'
Plug 'https://github.com/mbbill/undotree'
" { Syntax and highlighting }
Plug 'kovetskiy/sxhkd-vim'
Plug 'w0rp/ale'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/plasticboy/vim-markdown'
" { Intellisense }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'ycm-core/YouCompleteMe'
" { Documentation / Task management }
Plug 'vimwiki/vimwiki'
Plug 'liuchengxu/vim-which-key'
" { Make life easier}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'honza/vim-snippets'
Plug 'ferrine/md-img-paste.vim'
Plug 'turbio/bracey.vim'
Plug 'mattn/emmet-vim'
Plug 'tweekmonster/django-plus.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'bfrg/vim-jqplay'
Plug 'liuchengxu/vista.vim'
Plug 'puremourning/vimspector'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'szw/vim-maximizer'
" { Aesthetics }
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'edkolev/tmuxline.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'https://github.com/lambdalisue/nerdfont.vim'
Plug 'https://github.com/godlygeek/tabular'

" {fern}
Plug 'https://github.com/lambdalisue/fern.vim'
Plug 'https://github.com/antoinemadec/FixCursorHold.nvim'
Plug 'https://github.com/lambdalisue/fern-renderer-nerdfont.vim'
Plug 'https://github.com/lambdalisue/fern-hijack.vim'
Plug 'https://github.com/lambdalisue/fern-git-status.vim'
Plug 'https://github.com/LumaKernel/fern-mapping-fzf.vim'
Plug 'https://github.com/lambdalisue/fern-comparator-lexical.vim'

" { Themes enhanced }
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'sainnhe/edge'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/forest-night'
Plug 'dracula/vim', { 'as': 'dracula' }
" { Just in case }
Plug 'sheerun/vim-polyglot'
"Plug 'jupyter-vim/jupyter-vim'
"Plug 'https://github.com/severin-lemaignan/vim-minimap'
"Plug 'https://github.com/sedm0784/vim-you-autocorrect/'
"Plug 'farconics/victionary'
"Plug 'SirVer/ultisnips'
"Plug 'pseewald/vim-anyfold'
"Plug 'scrooloose/nerdcommenter'
"Plug 'justinmk/vim-sneak'
"Plug 'voldikss/vim-floaterm'
"Plug 'kjwon15/vim-transparent'
"Plug 'kkoomen/vim-doge'
"Plug 'https://github.com/itchyny/calendar.vim'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
filetype plugin indent on
if has('termguicolors')
  set termguicolors
endif
"set background=dark

""" For Gruvbox-material (only works if put above colorscheme)
"let g:gruvbox_material_background = 'soft'
"let g:gruvbox_material_enable_italic = 1
"let g:gruvbox_material_enable_bold = 1
"let g:gruvbox_material_transparent_background = 1
"let g:gruvbox_material_diagnostic_line_highlight = 1
"let g:gruvbox_material_better_performance = 1
"""
""" For edge (only works if put above colorscheme)
"let g:edge_style = 'aura'
"let g:edge_enable_italic = 1
"let g:edge_disable_italic_comment = 1
"let g:edge_transparent_background = 1
"let g:edge_diagnostic_line_highlight = 1
"let g:edge_better_performance = 1
"""

""" For sonokai (only works if put above colorscheme)
"let g:sonokai_enable_italic = 1
"let g:sonokai_enable_bold = 1
"let g:sonokai_disable_italic_comment = 1
"let g:sonokai_transparent_background = 1
"let g:sonokai_better_performance = 1
"let g:sonokai_diagnostic_line_highlight = 1
"""


""" For edge (only works if put above colorscheme)
"let g:forest_night_enable_italic = 1
"let g:forest_night_enable_bold = 1
"let g:forest_night_disable_italic_comment = 1
"let g:forest_night_transparent_background = 1
"let g:forest_night_better_performance = 1
"let g:forest_night_diagnostic_line_highlight = 1
"""

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
" enable all Python syntax highlighting features
let python_highlight_all = 1
" add border at 80 column
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
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_change_to_dir = 1
"let g:startify_session_sort = 1


"Map keys
nmap <leader>ee :SClose<CR>

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

" gitgutter plugin
set updatetime=200

" vim-fugitive plugin
" vim fugitive mapkeys
map <Leader>gs :G<CR>
map <Leader>gD :GdiffSplit<CR>
map <Leader>gb :GBranches<CR>
map <Leader>gl :Git log<CR>
" map <Leader>gr :Gread<CR>
" map <Leader>ge :Gedit<CR>
" map <Leader>gm :GMove<CR>
" map <Leader>gc :GRename<CR>
" map <Leader>gR :GRemove<CR>
" map <Leader>gD :GDelete<CR>
map <Leader>gj :diffget //3<CR>
map <Leader>gk :diffget //2<CR>

"Open git tree
nnoremap <leader>eg :Magit<CR>

"Open Undo tree
nnoremap <leader>eu :UndotreeToggle<CR>

""" Fern
nmap <leader>n :Fern . -drawer -toggle -reveal=%<CR>
let g:fern#renderer = "nerdfont"
"let g:fern#comparator = "lexical"



" { Syntax and highlighting }

""""" ALE
" Settings
let g:ale_linters = {
			\ 'javascript': ['eslint'],
			\ 'python': ['pylint'],
			\}
let g:ale_fixers = {
			\ 'javascript': ['prettier', 'eslint'],
			\ 'python': ['isort', 'autopep8'],
			\}
let g:ale_python_pylint_options = '--load-plugins pylint_django -d missing-docstring'

let g:ale_set_signs = 0
highlight error ctermbg=88
highlight SpellBad ctermbg=88
highlight todo ctermbg=100
highlight SpellCap ctermbg=100

"Map keys
" ALE Fixes
nnoremap <Leader>at :ALEFix trim_whitespace<CR>
"map <Leader>fix :ALEFix<CR>
" ALE warp to next error
" nnoremap <Leader>j :ALENextWrap<CR>
" nnoremap <Leader>k :ALEPreviousWrap<CR>

"""""" Victionary
let g:victionary#map_defaults =0
nmap <leader>ed <Plug>(victionary#define_prompt)
nmap <leader>eD <Plug>(victionary#define_under_cursor)
nmap <leader>es <Plug>(victionary#synonym_prompt)
nmap <leader>eS <Plug>(victionary#synonym_under_cursor)

""" Treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",      -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {"ruby", "dart"},  -- list of language that will be disabled
  },
  refactor = {
    highlight_definitions = {enable = true},
    highlight_current_scope = {enable = false},
    smart_rename = {
        enable = true,
        keymaps = {
            smart_rename = "grr",
        }
    }
  },
}
EOF

"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()
"""""vim markdown
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_new_list_item_indent = 0


" { Intellisense }
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>g] <Plug>(coc-diagnostic-next)

" Remap keys for goton
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Remap for rename current word
nmap ,rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> ,h :call <SID>show_documentation()<CR>
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

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"xmap <leader>ab  <Plug>(coc-codeaction-selected)
"nmap <leader>ab  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
"nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
"nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <C-b> <Plug>(coc-range-select)
"xmap <silent> <C-b> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>,  :<C-u>CocList<cr>
nnoremap <silent> <leader>,a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>,e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>,c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>,o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>,s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>,j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>,k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader>,p  :<C-u>CocListResume<CR>
" Show extension market
map <silent> <leader>,m :<C-u>CocList marketplace<CR>

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

"""
lua require'colorizer'.setup()

""""" VimWiki
" Ensure files are read as what I want:
let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
"map <leader>v :VimwikiIndex
"let g:vimwiki_list = [{'path': '~/Documents/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_list = [{'path': '~/Documents/vimwiki'}]
let g:vimwiki_table_mappings=0

""" vim-doge
"let g:doge_mapping = '<Leader>ea'

" Vimspector
nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint

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
      \ 's' : ['SplitVifm', 'Split file via vifm'],
      \ 'd' : ['DiffVifm', 'Diff files via vifm'],
      \ 't' : ['TabVifm', 'OpenTab files vifm'],
	  \ 'v' : ['VSplitVifm', 'VSplit via vifm ']
      \ }

let g:which_key_map.a = {
      \ 'name' : '+ALE' ,
      \ 't' : ['t', 'Trim Whitespace'],
      \ }

let g:which_key_map.g = {
      \ 'name' : '+Git' ,
      \ 's' : ['G', 'Git'],
      \ }

let g:which_key_map.h = {
      \ 'name' : '+COC (Actually use , and no need for pressing leader)',
	  \ '[g' : ['coc-diagnostic-prev', 'Previous diagnostic'],
	  \ ']g' : ['coc-diagnostic-next', 'Next diagnostic'],
	  \ 'gd' : ['coc-definition', 'Go to definition'],
	  \ 'gy' : ['coc-type-definition', 'Go to type definition'],
	  \ 'gi' : ['coc-implementation', 'Go to implementation'],
	  \ 'gr' : ['coc-references', 'Go to references'],
	  \ 'h' : ['show documentation' , 'show documentation'],
	  \ 'rn' : ['coc-rename', 'rename current word'],
	  \ 'a' : ['CocList diagnostic', 'coc show all diagnostic'],
	  \ 'e' : ['CocList extension', 'coc manage extension'],
	  \ 'o' : ['CocList outline', 'coc find symbol of current document'],
	  \ 's' : ['CocList -I symbols', 'search workspace for symbols'],
	  \ 'j' : ['CocNext', 'do default action for next item'],
	  \ 'k' : ['CocPrev', 'do default action for previous item'],
	  \ 'p' : ['CocListResume', 'resume latest coc list'],
      \ 'm' : ['Marketplace', 'Search for coc extensions'],
      \ 'l' : ['CocList', 'Search all List']
      \ }
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
      \ 'f' : ['Open configs', 'Open Configs']
      \}

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
        \ 'gc' : ['GBranches', 'Search for git branches'],
        \ 'v' : ['Vista finder', 'Search for function/class in file'],
        \}

let g:which_key_map.t = {
            \ 'name' : 'Vista',
			\ 't' : ['Vista!!', 'Show all function/class based on tags'],
			\ 'v' : ['Vista coc', 'Show all function/class based on lsp(coc)'],
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
nnoremap <leader>fv :Vista finder<CR>
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
nnoremap <leader>fs :CocList snippets<CR>
nnoremap <leader>fcc :Commits<CR>
nnoremap <leader>fco :Colors<CR>
nnoremap <leader>fbc :BCommits<CR>
nnoremap <leader>fgc :GBranches<CR>
nnoremap <leader>fa :Commands<CR>
nnoremap <leader>fM :Maps<CR>

""" Emmet vim
"let g:user_emmet_mode=','
let g:user_emmet_leader_key=','
""""" vim sneak
"let g:sneak#label = 1
"Sneak map
"map f <Plug>Sneak_s
"map F <Plug>Sneak_S
"""" vim-snippets
"let g:UltiSnipsExpandTrigger="<A-tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

""" Vim-vista
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

nnoremap <leader>tt :Vista!!<CR>
nnoremap <leader>tc :Vista coc<CR>


"Vim-markdown preview
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

""" vim-anyfold
"autocmd FileType * AnyFoldActivate
"set foldlevel=99 " Open all folds

""" vim-jupyter
let g:jupyter_mapkeys = 0


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
nnoremap <Leader>rr :so $MYVIMRC

" hide search results
map <Esc><Esc> :nohlsearch<CR>


" Buffers and Tabs
nnoremap <C-A-h> :bprevious<CR>
nnoremap <C-A-l> :bnext<CR>
nnoremap <C-n> :bprevious<CR>
nnoremap <C-m> :bnext<CR>
nnoremap <C-A-j> :tabprevious<CR>
nnoremap <C-A-k> :tabnext<CR>
nnoremap <silent> <A-left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>ec :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
map <leader>ep :!opout <c-r>%<CR><CRj

" Open configs
map <leader>ef :SLoad configs<CR>

" Open bibliography file in split
"map <leader>eb :vsp<space>$BIB<CR>
"map <leader>er :vsp<space>$REFER<CR>

autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
autocmd BufRead,BufNewFile *.tex set filetype=tex


""""""""""""""""""""""""""""""""""""""""""""""
" Configs
""""""""""""""""""""""""""""""""""""""""""""""
" pandoc , markdown
command! -nargs=* RunSilent
      \ | execute ':silent !'.'<args>'
	  \ | execute ':redraw!'
"nmap <Leader>pp :RunSilent pandoc -o /tmp/vim-pandoc-out.pdf "%"<CR>
"nmap <Leader>pe :RunSilent evince /tmp/vim-pandoc-out.pdf<CR>

"augroup extension
	"au!
	"" force indentation
	"autocmd BufRead,BufNewFile *.py setlocal sw=4 ts=4 sts=4 expandtab
	"autocmd BufRead,BufNewFile *.html,*.css,*.js,*.jsx setlocal sw=2 ts=2 sts=2 expandtab
	"autocmd BufRead,BufNewFile *.md setlocal sw=2 ts=2 sts=2 expandtab
	"" force javascriptreact to javascript
	"autocmd BufRead,BufNewFile *.jsx,*js setlocal filetype=javascript
"augroup end

augroup postWrite
	au!
	" auto reload vimrc
	autocmd BufWritePost init.vim so $MYVIMRC
	" groff pdf
	autocmd BufWritePost *.me !groff -Tps -me '%' > '%:r.pdf'
	" xrdb autoload .Xresources
	autocmd BufWritePost .Xresources silent !xrdb ~/.Xresources
augroup end

inoremap <C-v> <ESC>"*p
vnoremap <C-c> "+y
vnoremap <C-d> "+d

"" Compile document
map <leader>pc :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
map <leader>pp :!opout <c-r>%<CR><CR>
"autocmd VimEnter * if !argc() | Explore | endif
"autocmd VimEnter * if isdirectory(expand('<afile>')) | Explore | endif

" Automatically change the current directory
"autocmd BufEnter * silent! lcd %:p:h

"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)

"map <F3> <C-o><Plug>VimyouautocorrectUndo

" {PATH}
let g:coc_node_path = '/usr/bin/node'
let g:python3_host_prog = expand('/usr/bin/python3.8')
