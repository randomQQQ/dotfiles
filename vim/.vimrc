set clipboard=unnamedplus

nnoremap <tab> %
vnoremap <tab> %

nnoremap x "_x
nnoremap s "_s

noremap <silent> k gk
noremap <silent> j gj

let g:mapleader=" "  

nnoremap <C-u> viwU<Esc>
inoremap <C-u> <ESC>viwUea

noremap <silent><esc> <cmd>noh<cr><esc>

nnoremap 0p "0p
nnoremap <leader>v <C-v>

vnoremap <silent> < <gv
vnoremap <silent> > >gv

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

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
