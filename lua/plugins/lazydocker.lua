return {
    "crnvl96/lazydocker.nvim",
    keys = {
        {
            "<leader>gd",
            '<Cmd>lua LazyDocker.toggle()<CR>',
            desc = "Open LazyDocker",
        },
    },
    opts = {},
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
}
