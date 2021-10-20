"================ Plugins ===========================

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'

call plug#end()

" ================ General Config ====================

set laststatus=2                " status line
set number                      " always show line numbers
set encoding=UTF-8
set ignorecase                  " ignore case when searching
set noshowmode                  " hide the default mode text
set clipboard+=unnamedplus

" ================ Indentation ======================

set expandtab                   " expand tabs to spaces
set smarttab                    " insert tabs on the start of a line
set tabstop=4                   " tab width is 4 spaces
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set shiftwidth=4                " indent with 4 spaces
set smartindent                 " Makes indenting smart

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Mapping ==========================

nnoremap <tab> %
vnoremap <tab> %
nnoremap x "_x

noremap <silent> k gk
noremap <silent> j gj

let g:mapleader=" "  

noremap <silent><esc> <cmd>noh<cr><esc>

nnoremap 0p "0p
nnoremap <leader>v <C-v>
nnoremap <C-u> viwU<Esc>

nnoremap Y y$
nnoremap H 0
nnoremap L $
vnoremap H 0
vnoremap L $

noremap J <C-d>
noremap K <C-u> 

nnoremap <leader><leader>p o<ESC>p
nnoremap <leader><leader>P O<ESC>p

vnoremap <leader>p "_dP

" undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap ( (<c-g>u
inoremap ) )<c-g>u
inoremap [ [<c-g>u
inoremap ] ]<c-g>u

nnoremap n nzzzv
nnoremap N Nzzzv

nmap <Esc> <Cmd>call VSCodeNotify('notebook.cell.quitEdit')<CR>

xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine
