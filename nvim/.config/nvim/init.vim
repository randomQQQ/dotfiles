"================ Plugins ===========================

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'lyokha/vim-xkbswitch'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wincent/terminus'
Plug 'sainnhe/everforest'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'mattn/webapi-vim'

call plug#end()

" ================ Color theme =======================

" set background=dark
colorscheme one
" colorscheme OceanicNext             
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
set clipboard+=unnamedplus

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

" ================ Mapping ==========================

let g:mapleader=" "  
nmap <leader>w :w!<CR>
map <F1> :w !python3<CR>

nnoremap <silent> <BS> :nohlsearch<CR>
nnoremap 0p "0p
nnoremap <leader>v <C-v>
nnoremap <C-u> viwU<Esc>

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

noremap <silent> <C-Left> :vertical resize +5<CR>
noremap <silent> <C-Right> :vertical resize -5<CR>

nnoremap H 0
nnoremap L $

" ================ coc-vim ==========================

source $HOME/.config/nvim/coc.vim

" ================ xkb-switch =======================

let g:XkbSwitchEnabled = 1
let g:XkbSwitchIMappings = ['ru']

" ================ nvim-treesitter ==================

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
}
EOF

nnoremap <C-n> :NvimTreeToggle<CR>

" ================ Telescope ========================

nnoremap <leader>t <cmd>Telescope find_files<cr>
nnoremap <leader>r <cmd>Telescope live_grep<cr>

lua << EOF
require('telescope').setup({
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--fixed-strings'
    },
    sorting_strategy = "ascending",
    layout_strategy = "flex",
    winblend = 5,
    layout_config = {
      prompt_position = "top",
      horizontal = {
        width = {padding = 0.1},
        height = {padding = 0.1},
        preview_width = 0.6,
        preview_cutoff = 40.
      },
      vertical = {
        width = {padding = 0.05},
        height = {padding = 1},
        preview_height = 0.5,
      }
    },
  }
})
EOF
