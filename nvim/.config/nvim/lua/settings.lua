-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local fn = vim.fn      		    -- call Vim functions
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

-----------------------------------------------------------
-- General
-----------------------------------------------------------
g.mapleader = ' '              -- change leader to a comma
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
opt.clipboard = 'unnamedplus'  -- copy/paste to system clipboard
opt.swapfile = false           -- don't use swapfile
opt.backup = false             -- creates a backup file
opt.number = true              -- show line number
opt.ignorecase = true          -- ignore case letters when search
opt.smartcase = true           -- ignore lowercase for the whole pattern
opt.pumheight = 10             -- pop up menu height
opt.fileencoding = "utf-8"     -- the encoding written to a file
opt.showmode = false           -- we don't need to see things like -- INSERT -- anymore
opt.updatetime = 300           -- faster completion (4000ms default)

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines
opt.softtabstop = 4	  

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
opt.termguicolors = true      -- enable 24-bit RGB colors
cmd 'colorscheme material'
g['material_theme_style'] = 'palenight'
opt.background = 'dark'
