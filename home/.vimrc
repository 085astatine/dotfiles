filetype on
" Dein.vim
let s:dein_dir = expand('~/.cache/dein')
let s:dein_runtime = s:dein_dir .. '/repos/github.com/Shougo/dein.vim'
" install Dein.vim
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_runtime)
    call mkdir(s:dein_runtime, 'p')
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_runtime
  endif
  " add to runtimepath
  execute 'set runtimepath^=' .. s:dein_runtime
endif
" load TOML plugin configuration
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml('~/.vim/dein.toml', {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif
" install not-installed plugins on startup
if dein#check_install()
  call dein#install()
endif

syntax on
filetype on
filetype indent off
filetype plugin on
" encoding
set encoding=utf8
set fileencoding=utf-8
" backup
set nobackup
set backupskip=/tmp/*,/private/tmp/*
" swap
set noswapfile
" lock
set autoread
set hidden
" bell
set visualbell t_vb=
" show
set list
set number
set ruler
" cursor
set nocompatible
set whichwrap=b,s,[,],<,>,~
" scroll
set nostartofline
set scrolloff=5
" clipboard
set clipboard&
set clipboard^=unnamed,unnamedplus
if executable('xsel')
  autocmd VimLeave * call system("xsel -ib", getreg('+'))
endif
" chars
set backspace=indent,eol,start
set ambiwidth=single  " single/double
set listchars=eol:¬,tab:>\ ,trail:-
" brackets
set showmatch
set matchtime=1  " unit: 0.1sec
" layout
set nowrap
set display=lastline
set textwidth=0
set colorcolumn=80
" color
set t_Co=256
colorscheme molokai
set background=light
set background=dark
" search
set hlsearch
set incsearch
" indent
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
augroup FileTypeIndent
  autocmd!
  autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup end
" highlight
" highlight: cursor line number
set cursorline
highlight clear CursorLine
augroup number
  autocmd!
  autocmd InsertEnter * highlight CursorLineNr ctermfg=red guifg=red
  autocmd InsertLeave,VimEnter * highlight CursorLineNr ctermfg=blue guifg=blue
augroup end
" highlight: trailing spaces
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=blue ctermbg=blue
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup end
" increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>
