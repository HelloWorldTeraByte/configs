set nocompatible        " Be iMproved
set encoding=utf-8      " Set encoding to be utf-8
filetype plugin indent on

set showmatch           " Show matching brackets.
set autoindent          " Indent according to previous line.
set expandtab           " Use spaces instead of tabs.
set softtabstop=4       " Tab key indents by 4 spaces.
set shiftwidth=4        " >> indents by 4 spaces.
set shiftround          " >> indents to next multiple of 'shiftwidth'.

set backspace=indent,eol,start  " Make backspace work as you would expect.
set showcmd                     " Show already typed keys when more are expected.
set incsearch                   " Highlight while searching with / or ?.
set hlsearch                    " Keep matches highlighted.

set t_Co=256                " Set colors to 256
syntax on                   " Enable syntax highlighting.
set number                  " Set line numbering
colorscheme gruvbox
