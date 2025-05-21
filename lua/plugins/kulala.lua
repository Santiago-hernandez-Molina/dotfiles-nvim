return {
    "mistweaverco/kulala.nvim",
    lazy = true,
    keys = {
        { "<leader>rs", desc = "Send request" },
        { "<leader>ra", desc = "Send all requests" },
        { "<leader>rb",  desc = "Open scratchpad" },
    },
    fb = { "http", "rest" },
    opts = {
        -- your configuration comes here
        global_keymaps = true,
    },
}
