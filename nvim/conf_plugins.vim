set laststatus=2
set noshowmode
let g:lightline = {'colorscheme': 'one'}

" TODO:Get compile_commands.json to work with ale
let g:ale_c_parse_makefile = 1

let g:deoplete#enable_at_startup = 1

let g:LanguageClient_serverCommands = {
            \ 'cpp': ['clangd'],
            \ 'c': ['clangd'],
            \ }

let g:LanguageClient_autoStart = 1
