--- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '

local plugins = {
    ---------------------------------------------------------
    -- telescope and related plugins
    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.1',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    'nvim-telescope/telescope-fzy-native.nvim',

    {
        'sudormrfbin/cheatsheet.nvim',

        dependencies = { { 'nvim-lua/popup.nvim' }, }
    },
    ---------------------------------------
    -- Themes
    { 'EdenEast/nightfox.nvim' },

    {
        "catppuccin/nvim",
        name = "catppuccin",
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = ...
    },
    -----------------------------------------
    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    --   'nvim-treesitter/playground'
    -------------------------------------
    --harpoon
    { 'ThePrimeagen/harpoon' },
    ---------------------------------
    --undotree
    'mbbill/undotree',
    'tpope/vim-fugitive',
    -- Lua

    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
    },

    ------------------------------------------------------
    --LSP
    { 'williamboman/mason.nvim' },           -- Optional
    { 'williamboman/mason-lspconfig.nvim' }, -- Optional
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    },
    -----------------------------------------------------
    --Visuals and assorted dependencies
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        }
    },
    'ryanoasis/vim-devicons',
    'nvim-lua/plenary.nvim',
    ----------------------------------------------------
    -- vim-be-good
    'ThePrimeagen/vim-be-good',
    ----------------------------------------------------
    -- markdown-preview
    {
        "iamcco/markdown-preview.nvim",
        build = "cd app && npm install",
        init  = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft    = { "markdown" },
    }
}

local opts = {}

require("lazy").setup(plugins, opts)
