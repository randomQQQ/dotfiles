-----------------------------------------------------------
-- Keymaps configuration file
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local cmd = vim.cmd
local default_opts = {noremap = true, silent = true}
local noremap = {noremap = true}

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------
map('n', '<tab>', '%', noremap)
map('v', '<tab>', '%', noremap)

map('n', 'k', 'gk', default_opts)
map('n', 'j', 'gj', default_opts)

map('n', 'x', '"_x', noremap)
map('n', 's', '"_s', noremap)

-- Make word uppercase
map("n", "<C-u>", "viwU<ESC>", noremap)
map("i", "<C-u>", "<ESC>viwUea", noremap)

-- Save file
map('n', '<leader>w', ':w! <cr>', noremap)

-- Run python
map('n', '<F2>', ':w !python3<cr>', noremap)

-- Reselect visual block after indent/outdent
map('v', '<', '<gv', default_opts)
map('v', '>', '>gv', default_opts)

-- Remove highlights
map('n', '<esc>', '<cmd>noh<cr><esc>', noremap)

map('n', '0p', '"0p', noremap)
map('n', '<leader>v', '<C-v>', noremap)

-- Better window movement
map('n', '<C-j>', '<C-W>j', noremap)
map('n', '<C-k>', '<C-W>k', noremap)
map('n', '<C-l>', '<C-W>l', noremap)
map('n', '<C-h>', '<C-W>h', noremap)

map('n', 'Y', 'y$', noremap)
map('n', 'H', '0', noremap)
map('n', 'L', '$', noremap)
map('v', 'H', '0', noremap)
map('v', 'L', '$', noremap)

map('n', 'J', '<C-d>', noremap)
map('n', 'K', '<C-u>', noremap)

map('n', '<leader><leader>p', 'o<esc>p', noremap)
map('n', '<leader><leader>P', 'O<esc>p', noremap)
map('v', '<leader>p', '"_dP', noremap)

-- Buffers
map('n', '<A-,>', '<cmd>BufferLineCyclePrev<cr>', default_opts)
map('n', '<A-.>', '<cmd>BufferLineCycleNext<cr>', default_opts)
map('n', '<A-c>', '<cmd>bd!<CR>', default_opts)

-- Rnvimr
map('n', '<C-n>', '<cmd>NvimTreeToggle<cr>', noremap)

--Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files find_command=rg,--ignore,-L,--files<cr>', noremap)
map('n', '<leader>fn', '<cmd>Telescope find_files cwd=~/.config/nvim find_command=rg,--ignore,-L,--files<cr>', noremap)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', noremap)
map('n', '<leader>fo', '<cmd>Telescope oldfiles<cr>', noremap)
map('n', '<leader>fp', '<cmd>Telescope projects<cr>', noremap)
map('n', '<leader>fm', '<cmd>Telescope marks<cr>', noremap)

map('i', '<F1>', '<Nop>', noremap)
map('n', '<F1>', '<Nop>', noremap)

-- map('n', '<leader>fd', '<cmd>Telescope find_files search_dirs=["~/Documents/repositories"] <CR>', noremap)
