set nocompatible        " Be iMproved
set encoding=utf-8      " Set encoding to be utf-8
set fileencoding=utf-8
set autoread
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

set foldenable
set foldmethod=syntax
set foldlevel=10
set lazyredraw
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set showbreak=↪
set textwidth=80

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

" TODO:Get compile_commands.json to work with ale
let g:ale_c_parse_makefile = 1

let g:deoplete#enable_at_startup = 1

let g:LanguageClient_serverCommands = {
            \ 'cpp': ['clangd'],
            \ 'c': ['clangd'],
            \ }

let g:LanguageClient_autoStart = 1

syntax on
set t_Co=256
colorscheme gruvbox
set cursorline
let g:lightline = {'colorscheme': 'one'}

let mapleader = ","
" NERDTree mappings
map <C-n> :NERDTreeToggle<CR>

imap jk <Esc>

" Switch around buffers more easily
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Resize Buffers
nnoremap <C-Right> :vertical resize +5<CR>
nnoremap <C-Left> :vertical resize -5<CR>
nnoremap <C-Up> :resize -5<CR>
nnoremap <C-Down> :resize +5<CR>

" Clear the highlighting from the search
nnoremap <leader><space> :nohlsearch<CR>

nnoremap <leader>ah :call LanguageClient#textDocument_hover()<CR>
nnoremap <leader>ad :call LanguageClient#textDocument_definition()<CR>
nnoremap <leader>at :call LanguageClient#textDocument_typeDefinition()<CR>
nnoremap <leader>ai :call LanguageClient#textDocument_implementation()<CR>

nnoremap bl :buffers<CR>
nnoremap bg :buffers<CR>:buffer<Space>

nnoremap th  :tabfirst<CR>
nnoremap tl  :tablast<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
