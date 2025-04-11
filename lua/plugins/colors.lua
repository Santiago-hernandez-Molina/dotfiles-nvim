return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "night",
            light_style = "day",
            transparent = true,
            terminal_colors = true,
            styles = {
                comments = { italic = true },
                keywords = { italic = false },
                functions = {},
                variables = {},
                sidebars = "transparent",
                floats = "dark",
            },

            sidebars = { "qf", "help", "packer", "dap", "NvimTree" },
            hide_inactive_statusline = true,
            dim_inactive = true,
            lualine_bold = true,

            cache = true, -- When set to true, the theme will be cached for better performance

            ---@type table<string, boolean|{enabled:boolean}>
            plugins = {
                all = package.loaded.lazy == nil,
                auto = true,
            },

        })

        vim.cmd [[colorscheme tokyonight]]
    end
}
