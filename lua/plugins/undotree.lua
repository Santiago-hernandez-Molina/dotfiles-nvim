return {
    "jiaoshijie/undotree",
    keys = {
        -- { "<leader>u",  require("undotree").toggle, desc = "Toggle UndoTree" },
        -- { "<leader>uo", require("undotree").open,   desc = "Open UndoTree" },
        -- { "<leader>uc", require("undotree").close,  desc = "Close UndoTree" },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        float_diff = false,      -- using float window previews diff, set this `true` will disable layout option
        layout = "left_bottom", -- "left_bottom", "left_left_bottom"
        position = "left",      -- "right", "bottom"
        ignore_filetype = {
            "undotree",
            "undotreeDiff",
            "qf",
            "spectre_panel",
            "tsplayground",
        },
        window = {
            winblend = 0,
        },
        keymaps = {
            ["j"] = "move_next",
            ["k"] = "move_prev",
            ["gj"] = "move2parent",
            ["J"] = "move_change_next",
            ["K"] = "move_change_prev",
            ["<cr>"] = "action_enter",
            ["p"] = "enter_diffbuf",
            ["q"] = "quit",
        },
    }
}
