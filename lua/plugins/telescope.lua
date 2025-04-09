local telescope = {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",

    keys = {
        -- LSP related keymaps
        {
            "gd",
            function() require("telescope.builtin").lsp_definitions() end,
            desc = "LSP Definitions"
        },
        {
            "gi",
            function() require("telescope.builtin").lsp_implementations() end,
            desc = "LSP Implementations"
        },
        {
            "gr",
            function() require("telescope.builtin").lsp_references() end,
            desc = "LSP References"
        },
        {
            "<leader>gs",
            function() require("telescope.builtin").git_status() end,
            desc = "Git Status"
        },
        {
            "<leader>ml",
            function() require("telescope.builtin").diagnostics({ severity_bound = 0 }) end,
            desc = "Show Diagnostics"
        },
        {
            "<leader>fa",
            function()
                require("telescope").extensions.flutter.commands()
            end,
            desc = "Telescope flutter",
        },
        {
            "<leader>ff",
            function()
                require("telescope.builtin").fd({ hidden = true })
            end,
            desc = "Find files",
        },
        {
            "<leader>fc",
            function()
                require("telescope.builtin").fd({
                    cwd = vim.fn.stdpath("config"),
                })
            end,
            desc = "Open config",
        },
        {
            "<leader>fg",
            function()
                require("telescope.builtin").live_grep()
            end,
            desc = "Grep",
        },
        {
            "<leader>fb",
            function()
                require("telescope.builtin").buffers()
            end,
            desc = "Buffers",
        },
        {
            "<leader>fh",
            function()
                require("telescope.builtin").help_tags()
            end,
            desc = "Help tags",
        },
    },
    dependencies = {
        "gbrlsnchs/telescope-lsp-handlers.nvim",
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim",   run = "make",         name = "fzf" },
        { "nvim-telescope/telescope-file-browser.nvim", name = "file_browser" },
    },

    config = function()
        require("telescope").setup({

            defaults = {
            },
            pickers = {
                live_grep = {
                    file_ignore_patterns = {
                        "node_modules/",
                        "build/",
                        "target/",
                        "bin/",
                        ".git/",
                        "venv/",
                        "__pycache__",
                    },
                },
                find_files = {
                    path_display = { "smart" },
                    file_ignore_patterns = {
                        "node_modules/",
                        "build/",
                        "target/",
                        "bin/",
                        ".git/",
                        "venv/",
                        "__pycache__",
                    },
                },
            },
            extensions = {
                "flutter",
                fzf = {
                    fuzzy = true,                   -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true,    -- override the file sorter
                    case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                },
                file_browser = {
                    use_fd = true,
                },
            },

            init = function()
                local tele = require("telescope")
                tele.load_extension("fzf")
                tele.load_extension("harpoon")
                tele.load_extension("file_browser")
                require('telescope').load_extension('fzy_native')
            end,
        })
    end,
}

return telescope
