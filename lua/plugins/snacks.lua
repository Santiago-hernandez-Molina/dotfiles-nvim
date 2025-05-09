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
                enabled = true,
                ui_select = true,
                files = {
                    enabled = true, -- show file icons
                    dir = "󰉋 ",
                    dir_open = "󰝰 ",
                    file = "󰈔 "
                },
                matcher = {
                    fuzzy = true,          -- use fuzzy matching
                    smartcase = false,      -- use smartcase
                    ignorecase = true,     -- use ignorecase
                    sort_empty = false,    -- sort results when the search string is empty
                    filename_bonus = true, -- give bonus for matching file names (last part of the path)
                    file_pos = true,       -- support patterns like `file:line:col` and `file:line`
                    -- the bonusses below, possibly require string concatenation and path normalization,
                    -- so this can have a performance impact for large lists and increase memory usage
                    cwd_bonus = false,     -- give bonus for matching files in the cwd
                    frecency = true,       -- frecency bonus
                    history_bonus = false, -- give more weight to chronological order
                },
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
            health = { enabled = true },
            bigfile = { enabled = true },
            dashboard = { enabled = false },
            explorer = { enabled = false },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            scope = { enabled = true },
            statuscolumn = { enabled = false },
            words = { enabled = false },
            scroll = { enabled = false },
        },

        keys = {
            { "<leader>gg", function() Snacks.lazygit() end,                                           desc = "Lazygit" },
            { "gd",         function() Snacks.picker("lsp_definitions") end,                           desc = "LSP Definitions" },
            { "gi",         function() Snacks.picker("lsp_implementations") end,                       desc = "LSP Implementations" },
            { "gr",         function() Snacks.picker("lsp_references") end,                            desc = "LSP References" },
            { "<leader>gs", function() Snacks.picker("git_status") end,                                desc = "Git Status" },
            { "<leader>ml", function() Snacks.picker("diagnostics", { filter = { cwd = true } }) end, desc = "Show Diagnostics" },
            { "<leader>ff", function() Snacks.picker("files", { hidden = true }) end,                  desc = "Find Files" },
            { "<leader>fc", function() Snacks.picker("files", { cwd = vim.fn.stdpath("config") }) end, desc = "Open Config" },
            { "<leader>fg", function() Snacks.picker("live_grep") end,                                 desc = "Grep" },
            { "<leader>fb", function() Snacks.picker("buffers") end,                                   desc = "Buffers" },
            { "<leader>fh", function() Snacks.picker("help") end,                                      desc = "Help Tags" },
            -- { "<leader>fa", function() Snacks.picker("flutter_commands") end,                          desc = "Flutter Commands" },
        },
    },
}
