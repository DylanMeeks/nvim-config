return {
	{ -- only one of the following two needs to be enabled at a time
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration

			-- Only one of these is needed, not both.
			"nvim-telescope/telescope.nvim", -- optional
			-- "ibhagwan/fzf-lua",              -- optional
		},
		config = function()
			local neogit = require("neogit")
			neogit.setup({})
			vim.keymap.set("n", "<leader>gs", function()
				neogit.open()
			end)
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
            require('gitsigns').setup()
		end,
	},
	--  {
	--      "tpope/vim-fugitive",
	--      config = function ()
	--          vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
	--      end
	--  },
}
