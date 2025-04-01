return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = false },
        explorer = { enabled = false },
        indent = {
            enabled = true,
            indent = {
                only_scope = false,   -- only show indent guides of the scope
                only_current = false, -- only show indent guides in the current window
                char = "│",
            },
            scope = { char = "│", },
            animate = {
                enabled = false,
                easing = "linear",
                duration = {
                    step = 20,
                    total = 80,
                },
            },
        },
        input = { enabled = true },
        picker = {
            enabled = true,
            ui_select = true,
        },
        git = { enabled = true },
        health = { enabled = true },
        lazygit = {
            configure = true,
            config = {
                os = { editPreset = "nvim-remote" },
                gui = {
                    nerdFontsVersion = "3",
                },
            },
            theme_path = vim.fs.normalize(vim.fn.stdpath("cache") .. "/lazygit-theme.yml"),
            theme = {
                [241]                      = { fg = "Special" },
                activeBorderColor          = { fg = "MatchParen", bold = true },
                cherryPickedCommitBgColor  = { fg = "Identifier" },

                cherryPickedCommitFgColor  = { fg = "Function" },
                defaultFgColor             = { fg = "Normal" },
                inactiveBorderColor        = { fg = "FloatBorder" },
                optionsTextColor           = { fg = "Function" },

                searchingActiveBorderColor = { fg = "MatchParen", bold = true },

                selectedLineBgColor        = { bg = "Visual" }, -- set to `default` to have no background colour
                unstagedChangesColor       = { fg = "DiagnosticError" },
            },
            win = {
                style = "lazygit",
            },
        },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = false },
        scroll = { enabled = false },
    },
    keys = {
        { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    },
}
