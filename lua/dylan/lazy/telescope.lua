return {
    {
        "nvim-telescope/telescope.nvim",
        tag = '0.1.8',
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-lua/popup.nvim",
            'nvim-telescope/telescope-fzy-native.nvim',
            'nvim-telescope/telescope-media-files.nvim',
        },
        config = function()
            require('telescope').setup({})
            local builtin = require('telescope.builtin')
            local extensions = require('telescope').extensions

            require('telescope').load_extension('fzy_native')
            require('telescope').load_extension('media_files')


            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
            vim.keymap.set('n', '<leader>ps', function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end)
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
            vim.keymap.set('n', '<leader>fmf', extensions.media_files.media_files, {})
        end
    },
}
