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
set incsearch                   " Highlight while searching with / or ?.
set hlsearch                    " Keep matches highlighted.
set number                  	" Set line numbering
set laststatus=2                " Always show the status bar
set showcmd                     " Show already typed keys when more are expected.
set ttyfast
set lazyredraw
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set showbreak=↪

call plug#begin('~/.config/nvim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neoinclude.vim'
call plug#end()

let mapleader = ","

syntax on                   	" Enable syntax highlighting.
colorscheme gruvbox

let g:lightline = {'colorscheme': 'one'}

" TODO:Get compile_commands.json to work with ale
let g:ale_c_parse_makefile = 1

let g:deoplete#enable_at_startup = 1

let g:LanguageClient_serverCommands = {
            \ 'cpp': ['clangd'],
            \ 'c': ['clangd'],
            \ }

let g:LanguageClient_autoStart = 1

" NERDTree mappings
map <C-n> :NERDTreeToggle<CR>

imap jk <Esc>

" Switch around buffers more easily
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Resize Buffers
nmap <C-Right> :vertical resize +5<CR>
nmap <C-Left> :vertical resize -5<CR>
nmap <C-Up> :resize -5<CR>
nmap <C-Down> :resize +5<CR>

nmap <leader>sc :nohl<CR>    " Clear highlighting

nmap <leader>ah :call LanguageClient#textDocument_hover()<CR>
nmap <leader>ad :call LanguageClient#textDocument_definition()<CR>
nmap <leader>at :call LanguageClient#textDocument_typeDefinition()<CR>
nmap <leader>ai :call LanguageClient#textDocument_implementation()<CR>

nmap bl :buffers<CR>
nmap bg :buffers<CR>:buffer<Space>

nmap th  :tabfirst<CR>
nmap tl  :tablast<CR>
nmap tk  :tabnext<CR>
nmap tj  :tabprev<CR>
nmap tt  :tabedit<Space>
nmap tm  :tabm<Space>
nmap td  :tabclose<CR>
