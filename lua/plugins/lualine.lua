local mode_map = {
    ["NORMAL"] = "N",
    ["O-PENDING"] = "N?",
    ["INSERT"] = "I",
    ["VISUAL"] = "V",
    ["V-BLOCK"] = "VB",
    ["V-LINE"] = "VL",
    ["V-REPLACE"] = "VR",
    ["REPLACE"] = "R",
    ["COMMAND"] = "!",
    ["SHELL"] = "SH",
    ["TERMINAL"] = "T",
    ["EX"] = "X",
    ["S-BLOCK"] = "SB",
    ["S-LINE"] = "SL",
    ["SELECT"] = "S",
    ["CONFIRM"] = "Y?",
    ["MORE"] = "M",
}

return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    priority = 20,
    config = function()
        local colors = require("tokyonight.colors").setup()


        local bubbles_theme = {
            normal = {
                a = { fg = colors.bg, bg = colors.blue },
                b = { bg = "#1f2335", fg = colors.fg },
                c = { fg = colors.fg, bg = "#1f2335" },
            },

            insert = { a = { fg = colors.bg, bg = colors.green } },
            visual = { a = { fg = colors.bg, bg = colors.purple } },
            replace = { a = { fg = colors.bg, bg = colors.orange } },
        }

        local center = {
            -- Lsp server name .
            function()
                local msg = 'No Active Lsp'
                local buf_ft = vim.api.nvim_get_option_value('filetype', { buf = 0 })
                local clients = vim.lsp.get_clients()
                if next(clients) == nil then
                    return msg
                end
                for _, client in ipairs(clients) do
                    local filetypes = client.config.filetypes
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                        return client.name
                    end
                end
                return msg
            end,
            icon = '  ',
            color = { fg = colors.fg, gui = 'bold' },
        }

        require("lualine").setup({
            options = {
                icons_enabled = true,
                theme = bubbles_theme,
                component_separators = '',
                section_separators = { left = ' ', right = ' ' },
            },
            sections = {
                lualine_a = { {
                    "mode",
                    fmt = function(s)
                        return mode_map[s] or s
                    end,
                    separator = { right = "", left = "" },
                }, },
                lualine_b = {
                    'filename',
                    { "branch", icon = "" },
                    {
                        'diff',
                        symbols = { added = '󰐙 ', modified = '󰝶 ', removed = '󰍷 ' },
                        diff_color = {
                            added = { fg = colors.green },
                            modified = { fg = colors.orange },
                            removed = { fg = colors.red },
                        },
                    },
                },
                lualine_c = {},
                lualine_x = {},
                lualine_y = { center, 'filetype' },
                lualine_z = {
                    { 'location', separator = { right = '' } },
                },
            },
            inactive_sections = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { 'location' },
            },
            tabline = {},

            extensions = { "oil", "quickfix", "fzf", "symbols-outline" },
        })
    end
}
