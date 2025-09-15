return {
    "crnvl96/lazydocker.nvim",
    lazy=false,
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
