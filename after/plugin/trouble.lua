local trouble = require("trouble")

trouble.setup({ icons = false })

-- Lua
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "gR", "<cmd>Trouble lsp_references<cr>", { silent = true, noremap = true })

-- Commands

-- Trouble comes with the following commands:

--    Trouble [mode]: open the list
--    TroubleClose [mode]: close the list
--    TroubleToggle [mode]: toggle the list
--    TroubleRefresh: manually refresh the active list

--Modes:

--    document_diagnostics: document diagnostics from the builtin LSP client
--    workspace_diagnostics: workspace diagnostics from the builtin LSP client
--    lsp_references: references of the word under the cursor from the builtin LSP client
--    lsp_definitions: definitions of the word under the cursor from the builtin LSP client

--    lsp_type_definitions: type definitions of the word under the cursor from the builtin LSP client

--    quickfix: quickfix items
--    loclist: items from the window's location lis

local actions = require("telescope.actions")
local trouble_sources = require("trouble.sources.telescope")

local telescope = require("telescope")

telescope.setup {
    defaults = {
        mappings = {
            i = { ["<c-t>"] = trouble_sources.open },
            n = { ["<c-t>"] = trouble_sources.open },
        },
    },
}
