return {
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("custom.treesitter").setup()
		end,
	},
	{
		"bezhermoso/tree-sitter-ghostty",
		build = "make nvim_install",
	},
}
