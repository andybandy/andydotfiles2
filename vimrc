""""""""""""""""""""""""""""""""""""""""""""""""
" Vim settings by Andrei Shchatko
" E-mail: andrei.shchatko@gmail.com
""""""""""""""""""""""""""""""""""""""""""""""""

" Encoding
set encoding=utf-8
set fileencodings=utf-8,cp-1251

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
  Bundle 'git://github.com/hail2u/vim-css3-syntax.git'
  Bundle 'git://github.com/ap/vim-css-color.git'
  Bundle 'git://github.com/groenewege/vim-less.git'
  Bundle 'git://github.com/miripiruni/vim-better-css-indent.git'
  Bundle 'git://github.com/miripiruni/CSScomb-for-Vim.git'
  Bundle 'git://github.com/wavded/vim-stylus'

" JavaScript
  Bundle 'git://github.com/pangloss/vim-javascript.git'
  Bundle 'git://github.com/itspriddle/vim-jquery.git'
  Bundle 'git://github.com/kchmck/vim-coffee-script.git'
  Bundle 'git://github.com/walm/jshint.vim.git'
  Bundle 'git://github.com/briancollins/vim-jst.git'

" Html
  Bundle 'git://github.com/digitaltoad/vim-jade.git'
  Bundle 'git://github.com/nono/vim-handlebars'
  Bundle 'git://github.com/heartsentwined/vim-emblem'

" Ruby/Rails
  Bundle 'git://github.com/vim-ruby/vim-ruby.git'
  Bundle 'git://github.com/tpope/vim-rails.git'
  Bundle 'git://github.com/tpope/vim-endwise.git'
  Bundle 'git://github.com/slim-template/vim-slim.git'

" Scala/Play
  Bundle 'derekwyatt/vim-scala'
  Bundle 'git://github.com/gre/play2vim.git'

" Clojure
  Bundle 'tpope/vim-fireplace'
  Bundle 'tpope/vim-classpath'
  Bundle 'guns/vim-clojure-static'

" Rust
  Bundle 'wting/rust'

" Processing
  Bundle 'sophacles/vim-processing'

" csound
  Bundle 'kunstmusik/csound-vim'

" SuperCollider
  Bundle 'sbl/scvim'

" OpenGL shaders
  Bundle 'tikhomirov/vim-glsl'

" Vim airline
  Bundle 'bling/vim-airline'

" ctrlp
  Bundle 'git://github.com/kien/ctrlp.vim.git'

" mustache
  Bundle 'git://github.com/juvenn/mustache.vim.git'

" git
  Bundle 'git://github.com/tpope/vim-fugitive.git'

" greplace
  Bundle 'vim-scripts/greplace.vim'

" colors
  Bundle 'chriskempson/base16-vim'
  Bundle 'morhetz/gruvbox'
  Bundle 'cdmedia/itg_flat_vim'
  Bundle 'zsoltf/vim-maui'

" nerdtree
  Bundle 'scrooloose/nerdtree'

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
colorscheme Tomorrow-Night-Bright

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
