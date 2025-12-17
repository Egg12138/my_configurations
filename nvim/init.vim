set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
" set clipboard+=unnamedplus

" conditional extensions
if exists('g:vscode')
    " VSCode Neovim extension
else
    " ordnary Neovim 
endif

" conditional settings
if exists('g:vscode')
    " VSCode Neovim settings
else
    " ordnary Neovim 
endif



if exists(':tnoremap')
    tnoremap <Esc> <C-\><C-n>
endif

