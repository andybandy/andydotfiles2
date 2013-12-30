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
  Bundle 'git://github.com/derekwyatt/vim-scala.git'
  Bundle 'derekwyatt/vim-scala'
  Bundle 'git://github.com/gre/play2vim.git'

" Clojure
  Bundle 'tpope/vim-fireplace'
  Bundle 'tpope/vim-classpath'
  Bundle 'guns/vim-clojure-static'

" powerline
  Bundle 'git://github.com/Lokaltog/vim-powerline.git'

" ctrlp
  Bundle 'git://github.com/kien/ctrlp.vim.git'

" mustache
  Bundle 'git://github.com/juvenn/mustache.vim.git'

" git
  Bundle 'git://github.com/tpope/vim-fugitive.git'

" colors
  Bundle 'chriskempson/base16-vim'

" nerdtree
  Bundle 'scrooloose/nerdtree'

filetype plugin indent on     " required!
filetype plugin on
set omnifunc=syntaxcomplete#Complete

syntax on

set t_Co=256
set background=dark
colorscheme Tomorrow-Night-Bright

highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=0   ctermfg=3
highlight Search       ctermbg=0   ctermfg=9
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=0   ctermfg=3
highlight SpellBad     ctermbg=0   ctermfg=1

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

" Powerline
  let g:Powerline_symbols = 'fancy'

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
