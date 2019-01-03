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
