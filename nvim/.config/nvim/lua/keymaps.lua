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

map('n', 'x', '"_x', noremap)
map('n', 's', '"_s', noremap)

map('n', '<leader>w', ':w! <cr>', noremap)
map('n', '<F1>', ':w !python3<cr>', noremap)
map('n', '<esc>', '<cmd>noh<cr><esc>', noremap)

map('n', '0p', '"0p', noremap)
map('n', '<leader>v', '<C-v>', noremap)
map('n', '<C-u>', 'viwU<esc>', noremap)

map('n', '<C-J>', '<C-W>j', noremap)
map('n', '<C-K>', '<C-W>k', noremap)
map('n', '<C-L>', '<C-W>l', noremap)
map('n', '<C-H>', '<C-W>h', noremap)

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

map('n', '<A-,>', ':BufferLineCyclePrev<cr>', default_opts)
map('n', '<A-.>', ':BufferLineCycleNext<cr>', default_opts)
map('n', '<A-c>', ':bd!<CR>', default_opts)

map('n', '<C-n>', ':RnvimrToggle<cr>', noremap)
map('n', '<leader>ff', '<cmd>Telescope find_files find_command=rg,--ignore,-L,--files<cr>', noremap)
map('n', '<leader>fa', '<cmd>Telescope live-grep<cr>', noremap)
map('n', '<leader>fm', '<cmd>Telescope marks<cr>', noremap)

