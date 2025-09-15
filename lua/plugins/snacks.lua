return {
    {
        "folke/snacks.nvim",
        priority = 2000,
        lazy = false,
        opts = {

            indent = {
                enabled = true,
                scope = { char = "│", },
                indent = {
                    only_scope = false,   -- only show indent guides of the scope
                    only_current = false, -- only show indent guides in the current window
                    char = "│",
                },
                animate = {
                    enabled = false,
                },
            },

            picker = {
                enabled = false,
                ui_select = true,
                files = {
                    enabled = false, -- show file icons
                    dir = "󰉋 ",
                    dir_open = "󰝰 ",
                    file = "󰈔 "
                },
                matcher = {
                    fuzzy = true,          -- use fuzzy matching
                    smartcase = true,      -- use smartcase
                    ignorecase = true,     -- use ignorecase
                    sort_empty = false,    -- sort results when the search string is empty
                    filename_bonus = true, -- give bonus for matching file names (last part of the path)
                    file_pos = true,       -- support patterns like `file:line:col` and `file:line`
                    -- the bonusses below, possibly require string concatenation and path normalization,
                    -- so this can have a performance impact for large lists and increase memory usage
                    cwd_bonus = true,     -- give bonus for matching files in the cwd
                    frecency = true,      -- frecency bonus
                    history_bonus = true, -- give more weight to chronological order
                },
                exclude = {               -- add folder names here to exclude
                    ".git",
                    ".vscode",
                    "node_modules",
                }
            },

            lazygit = {
                configure = true,
                config = {
                    os = { editPreset = "nvim-remote" },
                    gui = {
                        nerdFontsVersion = "3",
                    },
                },
                win = {
                    style = "lazygit",
                },
            },

            input = { enabled = true },
            git = { enabled = true },
            health = { enabled = false },
            bigfile = { enabled = true },
            dashboard = { enabled = false },
            explorer = { enabled = false },
            notifier = { enabled = true },
            quickfile = { enabled = false },
            scope = { enabled = false },
            statuscolumn = { enabled = false },
            words = { enabled = false },
            scroll = { enabled = false },
        },

        keys = {
            { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
        },
    },
}
