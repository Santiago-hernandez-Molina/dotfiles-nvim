return {
    "crnvl96/lazydocker.nvim",
    event = "VeryLazy",
    keys = {
            {
                "<leader>gd",
                "<cmd>LazyDocker<CR>",
                desc = "Open LazyDocker",
            },
    },
    opts = {},
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
}
