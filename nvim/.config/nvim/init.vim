"================ Plugins ===========================

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'akinsho/nvim-bufferline.lua'
Plug 'glepnir/dashboard-nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kaicataldo/material.vim', {'branch': 'main'}
" Plug 'romgrk/barbar.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'hoob3rt/lualine.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'norcalli/nvim-colorizer.lua'
Plug 'kyazdani42/nvim-web-devicons' 
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lyokha/vim-xkbswitch'
Plug 'tpope/vim-commentary'
Plug 'wincent/terminus'
Plug 'rakr/vim-one'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'mattn/webapi-vim'

call plug#end()

" ================ Color theme =======================

let g:material_theme_style = 'palenight'
colorscheme material
" colorscheme one
set termguicolors
set background=dark
syntax on                       

hi Error        guibg=#292D3E guifg=#F07178
hi ErrorMsg     guibg=#292D3E guifg=#F07178
" ================ General Config ====================
set autochdir 

set laststatus=2                " status line
set number                      " always show line numbers
set encoding=UTF-8
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

noremap <silent><esc> <cmd>noh<cr><esc>

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

vnoremap <leader>p "_dP

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

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fa <cmd>Telescope live_grep<cr>
nnoremap <leader>fm <cmd>Telescope marks<cr>

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

" ================ Colorizer ========================

lua << EOF
require'colorizer'.setup(
  {'*';},
  {
      RGB      = true;         -- #RGB hex codes
	  RRGGBB   = true;         -- #RRGGBB hex codes
	  RRGGBBAA = true;         -- #RRGGBBAA hex codes
      names    = true;         -- "Name" codes like Blue
	  rgb_fn   = true;         -- CSS rgb() and rgba() functions
	  hsl_fn   = true;         -- CSS hsl() and hsla() functions
	  css      = true;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	  css_fn   = true;         -- Enable all CSS *functions*: rgb_fn, hsl_fn
  })
EOF

" ================ Barbar ===========================

" nnoremap <silent>    <A-,> :BufferPrevious<CR>
" nnoremap <silent>    <A-.> :BufferNext<CR>
" nnoremap <silent>    <A-c> :BufferClose<CR>

" let bufferline = get(g:, 'bufferline', {})
" " Enable/disable animations
" let bufferline.animation = v:true
" " Enable/disable current/total tabpages indicator (top right corner)
" let bufferline.tabpages = v:false

" let bufferline.icon_close_tab = 'x'
" let bufferline.icon_close_tab_modified = '●'

" let bg_current = get(nvim_get_hl_by_name('Normal',     1), 'background', '#000000')
" let bg_current = get(nvim_get_hl_by_name('Normal',     1), 'background', '#000000')
" let bg_visible = get(nvim_get_hl_by_name('TabLineSel', 1), 'background', '#000000')
" let bg_inactive = get(nvim_get_hl_by_name('TabLine',   1), 'background', '#000000')

" " For the current active buffer
" hi default link BufferCurrent      Normal
" " For the current active buffer when modified
" hi default link BufferCurrentMod   Normal
" " For the current active buffer icon
" hi default link BufferCurrentSign  Normal
" " For the current active buffer target when buffer-picking
" exe 'hi default BufferCurrentTarget   guifg=red gui=bold guibg=' . bg_current

" " For buffers visible but not the current one
" hi default link BufferVisible      TabLineSel
" hi default link BufferVisibleMod   TabLineSel
" hi default link BufferVisibleSign  TabLineSel
" exe 'hi default BufferVisibleTarget   guifg=red gui=bold guibg=' . bg_visible

" " For buffers invisible buffers
" hi default link BufferInactive     TabLine
" hi default link BufferInactiveMod  TabLine
" hi default link BufferInactiveSign TabLine
" exe 'hi default BufferInactiveTarget   guifg=red gui=bold guibg=' . bg_inactive

" hi TabLineFill ctermfg=red ctermbg=DarkGreen
" hi TabLine ctermfg=Blue ctermbg=Yellow
" hi BufferTabpageFill ctermfg=Red ctermbg=Yellow

" ================ Galaxyline =======================

luafile ~/.config/nvim/galaxyline.lua

" ================ Dashboard ========================

source ~/.config/nvim/dashboard.vim


lua << EOF
require("bufferline").setup{
    options = {
    show_buffer_close_icons = true,
    show_close_icon = false,
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = function()
      return '•'
    end,
  }
}
EOF


nnoremap <silent>    <A-,> :BufferLineCyclePrev<CR>
nnoremap <silent>    <A-.> :BufferLineCycleNext<CR>
nnoremap <silent>    <A-c> :bd!<CR>

