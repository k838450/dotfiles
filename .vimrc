syntax on

set number
set smartindent
set virtualedit=onemore
set title
set cursorline
set backspace=indent,eol,start
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set paste
set notitle
set tabstop=4

nnoremap <C-t> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1

"Chat sheet
let g:cheatsheet#cheat_file = '/Users/snow/.vim/cheetsheet'


"Tex
let g:vimtex_compiler_progname = '/Applications/MacVim.app/Contents/bin/gvim'
let g:vimtex_compiler_latexmk = { 'continuous' : 0 }
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/MacOS/Skim'

"Mark Down
let g:previm_open_cmd = 'open -a Safari'
nnoremap <silent> <C-p> :PrevimOpen<CR> 

augroup PrevimSettings
	autocmd!
	autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END


"Airline
"let g:airline_theme = 'bubblegum'
"let g:airline#extensions#tabline#enabled = 1


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/snow/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/snow/.vim/bundle')
  call dein#begin('/Users/snow/.vim/bundle')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/snow/.vim/bundle/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('tpope/vim-fugitive')
  call dein#add('rbtnn/game_engine.vim')
  call dein#add('rbtnn/puyo.vim')
  call dein#add('deris/vim-duzzle')
  call dein#add('scrooloose/nerdtree')
  call dein#add('vim-scripts/taglist.vim')
  call dein#add('hisaknown/nanomap.vim')
  "call dein#add('wesleyche/SrcExpl')
  "call dein#add('wesleyche/Trinity')
  "call dein#add('thinca/vim-quickrun')
  call dein#add('reireias/vim-cheatsheet')
  call dein#add('vim-airline/vim-airline')
  call dein#add('lervag/vimtex')
  call dein#add('zerowidth/vim-copy-as-rtf')
  "call dein#add('vim-airline/vim-airline-themes')
  "call dein#add('previm/previm')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


