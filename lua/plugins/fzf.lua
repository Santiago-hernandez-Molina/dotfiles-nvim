return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
        require("fzf-lua").setup({
            winopts = {
                height = 0.85,
                width = 0.80,
                row = 0.35,
                col = 0.50,
                border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
                preview = {
                    border = 'border',
                    wrap = 'nowrap',
                    hidden = 'nohidden',
                    vertical = 'down:45%',
                    horizontal = 'right:50%',
                    layout = 'flex',
                    flip_columns = 120,
                },
            },
            -- Configuraciones específicas por comando
            files = {
                prompt = "Files❯ ",
                git_icons = true,
                file_icons = true,
                color_icons = true,
                cwd_prompt = false,
                find_opts =
                [[--type f -not -path '*/\.*' -not -path '*/target/*' -not -path '*/build/*' -not -name '*.class' -not -name '*.jar' -not -name '*.war']],
                rg_opts =
                "--files --follow -g '!.*' -g '!target' -g '!build' -g '!*.class' -g '!*.jar' -g '!*.war'",
                fd_opts =
                "--type f --follow --exclude '.*' --exclude target --exclude build --exclude '*.class' --exclude '*.jar' --exclude '*.war'",
                formatter = "path.filename_first",
                winopts = {
                    preview = {
                        hidden = "hidden",
                    },
                },
            },
            grep = {
                prompt = "Rg❯ ",
                input_prompt = "Grep For❯ ",
                git_icons = true,
                file_icons = true,
                color_icons = true,
            },
            buffers = {
                prompt = "Buffers❯ ",
                file_icons = true,
                color_icons = true,
                sort_lastused = true,
            },
            git = {
                status = {
                    prompt = "GitStatus❯ ",
                    cmd = "git status -s",
                    file_icons = true,
                    color_icons = true,
                },
                commits = {
                    prompt = "Commits❯ ",
                    cmd =
                    "git log --color --pretty=format:'%C(yellow)%h%C(reset) %C(blue)%ad%C(reset) %C(auto)%d%C(reset) %s %C(black)- %an%C(reset)' --graph --date=short",
                },
            },
            lsp = {
                prompt_postfix = "❯ ",
                cwd_only = true,
                async_or_timeout = 5000,
                file_icons = true,
                color_icons = true,
            },
        })

        -- Configurar como picker por defecto para vim.ui.select
        require("fzf-lua").register_ui_select()
    end,
    keys = {
        { "gi",         function() require("fzf-lua").lsp_implementations() end,                     desc = "LSP Implementations" },
        { "gr",         function() require("fzf-lua").lsp_references() end,                          desc = "LSP References" },
        { "<leader>gs", function() require("fzf-lua").git_status() end,                              desc = "Git Status" },
        { "<leader>ml", function() require("fzf-lua").diagnostics_workspace() end,                   desc = "Show Diagnostics" },
        { "<leader>ff", function() require("fzf-lua").files() end,                                   desc = "Find Files" },
        { "<leader>fc", function() require("fzf-lua").files({ cwd = vim.fn.stdpath("config") }) end, desc = "Open Config" },
        { "<leader>fg", function() require("fzf-lua").live_grep() end,                               desc = "Grep" },
        { "<leader>fb", function() require("fzf-lua").buffers() end,                                 desc = "Buffers" },
        { "<leader>fh", function() require("fzf-lua").help_tags() end,                               desc = "Help Tags" },
    }
}
