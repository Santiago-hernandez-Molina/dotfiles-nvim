return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        menu = {
            width = vim.api.nvim_win_get_width(0) - 3,
        },
        settings = {
            save_on_toggle = true,
            sync_on_ui_close = true,
            tabline = false,
            tabline_prefix = "   ",
            tabline_suffix = "   ",
        },
    }
}
