"================ Plugins ===========================

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kevinhwang91/rnvimr'
Plug 'wincent/terminus'
Plug 'sainnhe/everforest'
Plug 'mhartington/oceanic-next'
Plug 'ryanoasis/vim-devicons'
Plug 'rakr/vim-one'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'mattn/webapi-vim'

call plug#end()

" ================ Color theme =======================

colorscheme OceanicNext             
set termguicolors
syntax on                       
let g:lightline = {'colorscheme' : 'everforest'}

" ================ General Config ====================
  
set laststatus=2                " status line
set number                      " always show line numbers
set encoding=utf-8              " UTF-8 encoding
set ignorecase                  " ignore case when searching
"set cursorline                  " highlight the current line
set noshowmode                  " hide the default mode text
"set spell spelllang=ru

" ================ Indentation ======================

set expandtab                   " expand tabs to spaces
set smarttab                    " insert tabs on the start of a line
set tabstop=4                   " tab width is 4 spaces
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set shiftwidth=4                " indent with 4 spaces

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

set clipboard=unnamedplus

" ================ Mapping ==========================
let g:mapleader=" "  
map <C-n> :NERDTreeToggle<CR>
nmap <leader>w :w!<CR>
map <C-n> :RnvimrToggle<CR>
map <F1> :w !python3<CR>
nnoremap 0p "0p
nnoremap <leader>v <C-v>

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

noremap <silent> <C-Left> :vertical resize +5<CR>
noremap <silent> <C-Right> :vertical resize -5<CR>

nnoremap <C-u> viwU<Esc>
" =================== rnvimr ========================

let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-p>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }


" ================ coc-vim ==========================

source $HOME/.config/nvim/coc.vim
