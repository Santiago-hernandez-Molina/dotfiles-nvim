return {
    {
        'stevearc/oil.nvim',
        opts = {},
        keys = {
            {
                "<leader>sa",
                "<CMD>Oil<CR>",
                desc = "Oil open parent",
            },
        },
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        lazy = false,
    }
}
