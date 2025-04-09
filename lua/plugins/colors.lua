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

            on_highlights = function(hl, c)
                local prompt = "#2d3149"

                hl.TelescopeNormal = {
                    bg = c.bg_dark,
                    fg = c.fg_dark,
                }
                hl.TelescopeBorder = {
                    bg = c.bg_dark,
                    fg = c.bg_dark,
                }
                hl.TelescopePromptNormal = {
                    bg = prompt,
                    fg = c.fg_dark,
                }
                hl.TelescopePromptBorder = {
                    bg = prompt,
                    fg = prompt,
                }
                hl.TelescopePromptTitle = {
                    bg = prompt,
                    fg = prompt,
                }
                hl.TelescopePreviewTitle = {
                    bg = prompt,
                    fg = c.orange,
                }
                hl.TelescopeResultsTitle = {
                    bg = prompt,
                    fg = c.orange,
                }
            end
        })

        vim.cmd [[colorscheme tokyonight]]
    end
}
