call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'nvim-lua/plenary.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'TimUntersberger/neogit'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-context'
"Plug 'dyng/ctrlsf.vim'


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"""""""""""""""""""""""""""""""""
""" Here mapping section starts """
"""""""""""""""""""""""""""""""""
let mapleader="\\"

" Launch fzf to search for files
:map <C-p> :Files<CR>

" Press cp to copy currently opened filename to buffer
:nmap cp :let @" = expand("%:t")<cr>

" This will insert single symbol that you type to the left of the cursor and
" exit to normal back to normal mode
nnoremap <Space> i_<Esc>r

" x - visual mode. Magic thing to replace currently selected word with buffer
" and still have previous stuff in buffer
xnoremap <Leader>p, "_dP

"""""""""""""""""""""""""""""""""
""" Here mapping section ends """
"""""""""""""""""""""""""""""""""


autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml,yaml.ansible setlocal indentkeys-=0#

" set syntax for Jenkinsfiles to be Groovy
autocmd BufNewFile,BufRead Jenkinsfile* set syntax=groovy


" shows relative line numbers
set number relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
