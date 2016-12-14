""""""""""""""""""""""""""""""""""""""""""""""""
" Vim settings by Andrei Shchatko
" E-mail: andrei.shchatko@gmail.com
""""""""""""""""""""""""""""""""""""""""""""""""

" Encoding
set encoding=utf-8
set fileencodings=utf-8,cp-1251

set ttm=100
set ttyfast

" Bundles
" Setting up Vundle if not installed
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo 'Installing Vundle..'
  echo ''
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle
Bundle 'gmarik/vundle'

" Editor config
Bundle 'editorconfig/editorconfig-vim'

" CSS/LESS
Bundle 'hail2u/vim-css3-syntax'
Bundle 'ap/vim-css-color'
Bundle 'miripiruni/vim-better-css-indent'
Bundle 'csscomb/CSScomb-for-Vim'
Bundle 'wavded/vim-stylus'

" JavaScript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'briancollins/vim-jst'
Bundle 'mxw/vim-jsx'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'othree/yajs.vim'

" json
Bundle 'elzr/vim-json'

" Ruby/Rails
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-endwise'
Bundle 'slim-template/vim-slim'

" Scala
Bundle 'derekwyatt/vim-scala'

" Clojure
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'

" Processing
Bundle 'sophacles/vim-processing'

" csound
Bundle 'luisjure/csound'

" SuperCollider
Bundle 'sbl/scvim'

" OpenGL shaders
Bundle 'tikhomirov/vim-glsl'

" Vim airline
Bundle 'bling/vim-airline'
Bundle 'vim-airline/vim-airline-themes'

" ctrlp
Bundle 'kien/ctrlp.vim'

" git
Bundle 'tpope/vim-fugitive'

" greplace
Bundle 'vim-scripts/greplace.vim'

" colors
Bundle 'chriskempson/base16-vim'
Bundle 'morhetz/gruvbox'
Bundle 'cdmedia/itg_flat_vim'
Bundle 'zsoltf/vim-maui'
Bundle 'flazz/vim-colorschemes'

" nerdtree
Bundle 'scrooloose/nerdtree'
Bundle 'Xuyuanp/nerdtree-git-plugin'

" markdown
Bundle 'tpope/vim-markdown'
Bundle 'suan/vim-instant-markdown'

filetype plugin indent on     " required!
filetype plugin on
set omnifunc=syntaxcomplete#Complete

set guifont=Menlo:h14
syntax on

set t_Co=256
set background=dark
colorscheme hybrid
" colorscheme Tomorrow-Night-Bright

set number

" Tab is 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Always show current position
set ruler

set colorcolumn=80
set textwidth=80
set linebreak           " Перенос не разрывая слов
set autoindent          " Копирует отступ от предыдущей строки
set smartindent         " Включаем 'умную' автоматическую расстановку отступов
set cursorline
set gcr=n:blinkon0      " Отключаем мигание курсора в MacVim.
set guicursor=          " Выключаем мигающий курсор

set list
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:·

set laststatus=2

" Cool search
set showmatch
set hlsearch
set incsearch
set ignorecase

" mouse scroll
set mouse=a
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
endif

" Airline
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

" NERDTree
   nmap <Bs> :NERDTreeToggle<CR>
   let NERDTreeShowBookmarks=1
   let NERDTreeChDirMode=2
   let NERDTreeQuitOnOpen=1
   let NERDTreeShowHidden=1
   let NERDTreeKeepTreeInNewTab=0
   let NERDTreeMinimalUI=1 " Disables display of the 'Bookmarks' label and 'Press ? for help' text.
   let NERDTreeDirArrows=1 " Tells the NERD tree to use arrows instead of + ~ chars when displaying directories.
   let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

" markdown
let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 0

" vim-jsx (react)
let g:jsx_ext_required = 0

" ctrlp
let g:ctrlp_custom_ignore = '\v[\/](node_modules)|(\.(swp|git))'

" javascript
let g:used_javascript_libs= 'underscore,react'
