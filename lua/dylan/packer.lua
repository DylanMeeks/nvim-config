-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- setup file
local function get_setup(name)
  return string.format('require("setup.%s")', name)
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

---------------------------------------------------------
-- telescope and related plugins
  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use {
      'sudormrfbin/cheatsheet.nvim',

        requires = {  {'nvim-lua/popup.nvim'}, }
      }
---------------------------------------
-- Themes 
  use ({ 'EdenEast/nightfox.nvim',
  	as = "nightfox",
	config = function()
    --	vim.cmd('colorscheme carbonfox')
	end})

  use { "catppuccin/nvim", as = "catppuccin" }
-----------------------------------------
-- Treesitter 
  use ({ 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})
   --  use 'nvim-treesitter/playground'
------------------------------------- 
--harpoon
  use 'ThePrimeagen/harpoon'
--------------------------------- 
--undotree
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  -- Lua

  use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
    }

------------------------------------------------------ 
--LSP 
  use { 'VonHeikemen/lsp-zero.nvim',
	    branch = 'v1.x',
	    requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},             -- Required
		    {'williamboman/mason.nvim'},           -- Optional
		    {'williamboman/mason-lspconfig.nvim'}, -- Optional

		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},         -- Required
		    {'hrsh7th/cmp-nvim-lsp'},     -- Required
		    {'hrsh7th/cmp-buffer'},       -- Optional
		    {'hrsh7th/cmp-path'},         -- Optional
		    {'saadparwaiz1/cmp_luasnip'}, -- Optional
		    {'hrsh7th/cmp-nvim-lua'},     -- Optional

		    -- Snippets
		    {'L3MON4D3/LuaSnip'},             -- Required
		    {'rafamadriz/friendly-snippets'}, -- Optional
	    }
    }
----------------------------------------------------- 
--Visuals and assorted requires
  use {
    "nvim-lualine/lualine.nvim",
    requires = {
      "kyazdani42/nvim-web-devicons",
    }
  }
  use 'ryanoasis/vim-devicons'
  use 'nvim-lua/plenary.nvim'
---------------------------------------------------- 
-- vim-be-good
  use 'ThePrimeagen/vim-be-good'

end)
