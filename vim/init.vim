set nocompatible
syntax on
set encoding=utf8
call plug#begin('~/.local/share/nvim/plugged')



Plug 'junegunn/fzf' 
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'szorfein/darkest-space'
Plug 'roxma/nvim-completion-manager'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jnurmine/Zenburn'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tomasiser/vim-code-dark'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
call plug#end()


let g:LanguageClient_serverCommands = {
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ 'javascript': ['flow-language-server', '--stdio'],
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

let g:ctrlp_max_files = 0
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(node_modules)$',
"  \ 'file': '\v\.(exe|so|dll)$',
"  \ }

let g:ctrlp_custom_ignore = 'node_modules\|git'

set wrap
set linebreak

set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:⨼
set list!
set ts=4
set sw=4
set expandtab


nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <C-j> :CtrlPBuffer<CR>
set number relativenumber
colorscheme codedark
set number
