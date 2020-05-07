

"___  ___ _   __  ___      _ _ _   
"|  \/  || | / / / _ \    | (_) |  
"| .  . || |/ / / /_\ \ __| |_| |_ 
"| |\/| ||    \ |  _  |/ _` | | __|
"| |  | || |\  \| | | | (_| | | |_ 
"\_|  |_/\_| \_/\_| |_/\__,_|_|\__|
                                  
                                  


" change leader key
let g:mapleader=","

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
Plug 'airblade/vim-gitgutter'
Plug 'https://github.com/mbbill/undotree'
" { Syntax and highlighting }
Plug 'https://github.com/mboughaba/i3config.vim'
Plug 'kovetskiy/sxhkd-vim'
Plug 'w0rp/ale'
Plug 'https://github.com/sedm0784/vim-you-autocorrect/'
Plug 'farconics/victionary'
Plug 'https://github.com/plasticboy/vim-markdown'
" { Intellisense }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" { Documentation }
Plug 'vimwiki/vimwiki'
Plug 'liuchengxu/vim-which-key'
" { Make life easier}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'turbio/bracey.vim'
Plug 'mattn/emmet-vim'
Plug 'justinmk/vim-sneak'
" { Aesthetics }
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'kjwon15/vim-transparent'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/godlygeek/tabular'

" { Just in case }
"Plug 'chriskempson/base16-vim'
"Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'https://github.com/vim-scripts/Tabmerge'
"Plug 'https://github.com/sjl/gundo.vim'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
filetype plugin indent on
colorscheme onedark
set nocompatible
set termguicolors
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
set sw=4 ts=4 sts=4 noexpandtab autoindent
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
set wildmode=longest:list,full

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
"Plug 'PotatoesMaster/i3-vim-syntax'
"Plug 'PotatoesMaster/i3-vim-syntax'
set tabline=2

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
let g:startify_custom_header = startify#center([
			\'_______  _        _______  ______  __________________',
			\'(       )| \    /\(  ___  )(  __  \ \__   __/\__   __/',
			\'| () () ||  \  / /| (   ) || (  \  )   ) (      ) (   ',
			\'| || || ||  (_/ / | (___) || |   ) |   | |      | |   ',
			\'| |(_)| ||   _ (  |  ___  || |   | |   | |      | |   ',
			\'| |   | ||  ( \ \ | (   ) || |   ) |   | |      | |   ',
			\'| )   ( ||  /  \ \| )   ( || (__/  )___) (___   | |   ',
			\'|/     \||_/    \/|/     \|(______/ \_______/   )_(   ',
			\])

"vim startify sessions
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_session_delete_buffers = 1
"let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
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
highlight GitGutterAdd		cterm=bold ctermfg=2
highlight GitGutterDelete	cterm=bold ctermfg=1
highlight GitGutterChange	cterm=bold ctermfg=3
highlight GitGutterText		cterm=bold ctermfg=5

" vim-fugitive plugin
highlight DiffAdd		cterm=NONE ctermbg=17
highlight DiffDelete	cterm=NONE ctermbg=17 ctermfg=1
highlight DiffChange	cterm=NONE ctermbg=17
highlight DiffText		cterm=NONE ctermbg=52

" vim fugitive mapkeys
map <Leader>gs :G<CR>
map <Leader>gd :GdiffSplit<CR>
map <Leader>gl :Git log<CR>
map <Leader>gr :Gread<CR>
map <Leader>ge :Gedit<CR>
map <Leader>gm :GMove<CR>
map <Leader>gc :GRename<CR>
map <Leader>gR :GRemove<CR>
map <Leader>gD :GDelete<CR>

"Open git tree
nnoremap <leader>egt :Magit<CR>

"Open Undo tree
nnoremap <leader>eut :UndotreeToggle<CR>

" NERDTree ignore
"let NERDTreeIgnore = ['\.pyc$', '\.class']
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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
" ALE warp to next error
"nnoremap <Leader>j :ALENextWrap<CR>
"nnoremap <Leader>k :ALEPreviousWrap<CR>
" ALE Fixes
nnoremap <Leader>at :ALEFix trim_whitespace<CR>
"map <Leader>fix :ALEFix<CR>

"""""" Victionary
let g:victionary#map_defaults =0
nmap <leader>ed <Plug>(victionary#define_prompt)
nmap <leader>eD <Plug>(victionary#define_under_cursor)
nmap <leader>es <Plug>(victionary#synonym_prompt)
nmap <leader>eS <Plug>(victionary#synonym_under_cursor)

"""""vim markdown
let g:vim_markdown_no_extensions_in_markdown = 1

" { Intellisense }
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> m[g <Plug>(coc-diagnostic-prev)
nmap <silent> m]g <Plug>(coc-diagnostic-next)

" Remap keys for goton
nmap <silent> mgd <Plug>(coc-definition)
nmap <silent> mgy <Plug>(coc-type-definition)
nmap <silent> mgi <Plug>(coc-implementation)
nmap <silent> mgr <Plug>(coc-references)

" Remap for rename current word
nmap mrn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> mh :call <SID>show_documentation()<CR>
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

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> ma  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> me  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> mc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> mo  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> ms  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> mj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> mk  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> mp  :<C-u>CocListResume<CR>

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

""""" VimWiki
" Ensure files are read as what I want:
let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
"map <leader>v :VimwikiIndex
let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]

""""" vim-which-key
call which_key#register(',', "g:which_key_map")
set timeoutlen=300
" Define prefix dictionary
let g:which_key_map =  {}
let g:which_key_map.v = {
      \ 'name' : '+Vifm' ,
      \ 'i' : ['Vifm', 'Open file via vifm'],
      \ 's' : ['VSplitVifm', 'Split file via vifm'],
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
      \ 'd' : ['GdiffSplit', 'GitDiff with previous version'],
	  \ 'l' : ['Git log', 'Git logs'],
	  \ 'r' : ['Gread', 'Read with buffer'],
	  \ 'w' : ['Gwrite', 'writes to work tree and index ver'],
	  \ 'g' : ['Ggrep', 'grep for git'],
	  \ 'e' :['Gedit', 'Diff with older version for args'],
	  \ 'm' : ['GMove', 'git mv %f buffer name affected)'],
	  \ 'c' : ['GRename', 'rename'],
	  \ 'R' : ['GRemove', 'git rm file only'],
	  \ 'D' : ['GDelete', 'git rm with buffer'],
      \ }

let g:which_key_map.m = {
      \ 'name' : '+COC (No need for leader)',
	  \ '[g' : ['coc-diagnostic-prev', 'Previous diagnostic'],
	  \ ']g' : ['coc-diagnostic-next', 'Next diagnostic'],
	  \ 'gd' : ['coc-definition', 'Go to definition'],
	  \ 'gy' : ['coc-type-definition', 'Go to type definition'],
	  \ 'gi' : ['coc-implementation', 'Go to implementation'],
	  \ 'gr' : ['coc-references', 'Go to references'],
	  \ 'h' : 'show documentation',
	  \ 'rn' : ['coc-rename', 'rename current word'],
	  \ 'a' : ['CocList diagnostic', 'coc show all diagnostic'],
	  \ 'e' : ['CocList extension', 'coc manage extension'],
	  \ 'o' : ['CocList outline', 'coc find symbol of current document'],
	  \ 's' : ['CocList -I symbols', 'search workspace for symbols'],
	  \ 'j' : ['CocNext', 'do default action for next item'],
	  \ 'k' : ['CocPrev', 'do default action for previous item'],
	  \ 'p' : ['CocListResume', 'resume latest coc list'],
      \ }

let g:which_key_map.e = {
			\ 'name' : '+etc',
			\ 'c' : 'Compile document',
			\ 'p' : 'Preview file',
			\ 'ut' : ['UndotreeToggle', 'Open Undo Tree'],
			\ 'gt' : ['Magit', 'Open Git Tree'],
			\ 'd' : 'Search prompt word',
			\ 'D' : 'Search current word',
			\ 's' : 'Search prompt synonym',
			\ 'S' : 'Search current synonym',
			\ 'z' : 'FZF',
			\ 'e' : "Exit Session",
			\}

" { Make life easier }
""""" FZF
" fzf plugin
set rtp+=~/.fzf
noremap <leader>ez :FZF<CR>
""""" vim sneak
let g:sneak#label = 1
"Sneak map
map f <Plug>Sneak_s
map F <Plug>Sneak_S

" { Aesthetics }
""""" lightline
let g:lightline = {
  \	'colorscheme': 'onedark',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['gitbranch','readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['charvaluehex','fileformat', 'fileencoding']]
  \     },
  \	'component_function': {
  \		'gitbranch': 'fugitive#head',
  \		'charavaluehex': '0x%B'
  \
  \		},
  \ }

let g:lightline.separator = {
\   'left': '', 'right': ''
\}
let g:lightline.subseparator = {
\   'left': '', 'right': ''
\}
"let g:lightline.tabline = {
"\   'left': [['buffers']],
"\   'right': [['close']]
"\}
let g:lightline.component_expand = {
\   'buffers': 'lightline#bufferline#buffers'
\}
let g:lightline.component_type = {
\   'buffers': 'tabsel'
\}

""""""""""""""""""""""""""""""""""""""""""""""
" Mapping
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
noremap <C-Left>	:vertical:resize -1<CR>
noremap <C-Down>	:resize +1<CR>
noremap <C-Up>		:resize -1<CR>
noremap <C-Right>	:vertical:resize +1<CR>


" NERDTree plugin
noremap <Leader>n :NERDTreeToggle<CR>

" Vifm
map <leader>vv :Vifm<CR>
map <leader>vv :VsplitVifm<CR>
map <leader>vs :SplitVifm<CR>
map <leader>vd :DiffVifm<CR>
map <leader>vt :TabVifm<CR>

"netrw
"noremap <Leader>n :Vexplore<CR>


" reload vimrc
"nnoremap <Leader>rr :source ~/.vimrc<CR>

" hide search results
map <Esc><Esc> :nohlsearch<CR>

" vim fugitive
map <Leader>gs :G<CR>
map <Leader>gd :GdiffSplit<CR>
map <Leader>gl :Git log<CR>
map <Leader>gr :Gread<CR>
map <Leader>ge :Gedit<CR>
map <Leader>gm :GMove<CR>
map <Leader>gc :GRename<CR>
map <Leader>gR :GRemove<CR>
map <Leader>gD :GDelete<CR>

" YouCompleteMe
"map <Leader>gt :YcmCompleter GoTo<CR>

" Tabs
nnoremap <C-left> :tabprevious<CR>
nnoremap <C-right> :tabnext<CR>
nnoremap <silent> <A-left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
"nnoremap <C-m> :Tabmerge right<CR>


" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>ec :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
map <leader>ep :!opout <c-r>%<CR><CRj

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
nmap <Leader>pp :RunSilent pandoc -o /tmp/vim-pandoc-out.pdf "%"<CR>
nmap <Leader>pe :RunSilent evince /tmp/vim-pandoc-out.pdf<CR>

augroup extension
	au!
	" force indentation
	autocmd BufRead,BufNewFile *.py setlocal sw=4 ts=4 sts=4 expandtab
	autocmd BufRead,BufNewFile *.html,*.css,*.js,*.jsx setlocal sw=2 ts=2 sts=2 expandtab
	autocmd BufRead,BufNewFile *.md setlocal sw=2 ts=2 sts=2 expandtab
	" force javascriptreact to javascript
	autocmd BufRead,BufNewFile *.jsx,*js setlocal filetype=javascript
augroup end

augroup postWrite
	au!
	" auto reload vimrc
	autocmd BufWritePost .vimrc source ~/.vimrc
	" groff pdf
	autocmd BufWritePost *.me !groff -Tps -me '%' > '%:r.pdf'
	" xrdb autoload .Xresources
	autocmd BufWritePost .Xresources silent !xrdb ~/.Xresources
augroup end

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set ft=i3config
aug end

inoremap <C-v> <ESC>"*p
vnoremap <C-c> "+y
vnoremap <C-d> "+d

"" Compile document
"map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
"map <leader>p :!opout <c-r>%<CR><CR>
"autocmd VimEnter * if !argc() | Explore | endif
"autocmd VimEnter * if isdirectory(expand('<afile>')) | Explore | endif

nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>
