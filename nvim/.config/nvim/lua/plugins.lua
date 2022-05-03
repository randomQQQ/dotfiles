-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use 'wbthomason/packer.nvim' -- Have packer manage itself
    use 'kaicataldo/material.vim'
    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'jiangmiao/auto-pairs'
    use 'glepnir/galaxyline.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'norcalli/nvim-colorizer.lua'
    -- use 'kyazdani42/nvim-tree.lua'
    use 'akinsho/nvim-bufferline.lua'
    -- use 'ahmedkhalf/project.nvim'
    -- use 'jose-elias-alvarez/null-ls.nvim'
    use 'lyokha/vim-xkbswitch'
    use {'neoclide/coc.nvim', branch = 'release'}
    -- use 'nvim-lua/plenary.nvim'
    -- use 'nvim-lua/popup.nvim'
    -- use 'nvim-telescope/telescope.nvim'
    use 'goolord/alpha-nvim'

    use({
        "nvim-telescope/telescope.nvim", 
        requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
	})
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    -- use 'neovim/nvim-lspconfig'
    -- use 'hrsh7th/cmp-nvim-lsp'
    -- use 'hrsh7th/cmp-buffer'
    -- use 'hrsh7th/cmp-path'
    -- use 'hrsh7th/cmp-cmdline'
    -- use 'hrsh7th/nvim-cmp'
    -- use 'onsails/lspkind-nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
if PACKER_BOOTSTRAP then
    require('packer').sync()
end
end)

