let mapleader = "\<Space>" 

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

nmap <C-c> :nohl<CR>    " Clear highlighting

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
