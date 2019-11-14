syntax on
filetype on
filetype indent off
filetype plugin on

" 基本設定
set encoding=utf8                 "エンコーディング設定
set fileencoding=utf-8            "カレントバッファ内のファイルの文字エンコーディングを設定する
set scrolloff=5                   "カーソルの上または下に表示する最小限の行数
set nowrap                        "(no)ウィンドウの幅を超える行の折り返し設定
set nobackup                      "(no)ファイルを上書きする前にバックアップファイルを作る
set backupskip=/tmp/*,/private/tmp/*
set autoread                      "他で書き換えられた場合、自動で読みなおす
set noswapfile                    "swapをつくらない
set hidden                        "編集中でも他のファイルを開けるようにする
set backspace=indent,eol,start    "backspaceで消せるようにする
set vb t_vb=                      "ビープ音を鳴らさない
set list                          "タブ文字、行末など不可視文字を表示する
set number                        "行番号表示
set ruler                         "カーソルが何行目の何列目に置かれているかを表示する
set nocompatible
set nostartofline
" clipboard
set clipboard&
set clipboard^=unnamed,unnamedplus
if executable('xsel')
  autocmd VimLeave * call system("xsel -ib", getreg('+'))
endif
" 文字設定
"set ambiwidth=double
set ambiwidth=single
"set listchars=eol:$,tab:>\ ,trail:- " EOL,タブ,行末尾の空白を可視化する
set listchars=eol:¬,tab:>\ ,trail:- " EOL,タブ,行末尾の空白を可視化する
set whichwrap=b,s,[,],<,>,~
" 括弧
set showmatch   "対応する括弧やプレースを表示する
set matchtime=1 "0.1sec
" 1行の文字数が多い場合
set display=lastline
set textwidth=0
set colorcolumn=80
" 色設定
set t_Co=256
colorscheme molokai
set background=light
set background=dark "背景色が暗い
" 検索設定
set hlsearch " 検索結果のハイライトをON (OFF: nohlsearch)
set incsearch " インクリメンタルサーチ
" indent
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
augroup FileTypeIndent
  autocmd!
  autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType vim setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END
" 末尾の空白をハイライト表示
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Blue ctermbg=Blue
  "autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END
