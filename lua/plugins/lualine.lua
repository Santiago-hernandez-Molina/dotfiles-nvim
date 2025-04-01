local colors = require("tokyonight.colors").setup()
local prompt = "#2d3149"

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

local bubbles_theme = {
    normal = {
        a = { fg = colors.bg, bg = colors.fg_sidebar },
        b = { bg = prompt },
        c = { fg = colors.fg, bg = 'none' },
    },

    insert = { a = { fg = colors.bg, bg = colors.green } },
    visual = { a = { fg = colors.bg, bg = colors.purple } },
    replace = { a = { fg = colors.bg, bg = colors.orange } },
}

local lsp = {
    getName = function()
        local msg = "No Active Lsp"
        local clients = vim.lsp.get_clients()
        if next(clients) == nil then
            return msg
        end
        for _, client in ipairs(clients) do
            return client.name
        end
        return msg
    end,
    icon = " ",
}

bubbles_theme.normal.c.bg = 'none'

return {
    "nvim-lualine/lualine.nvim",
    opts = {
        options = {
            icons_enabled = true,
            theme = bubbles_theme,
            component_separators = {},
            symbols = {
                modified = "●", -- Text to show when the file is modified.
                readonly = "", -- Text to show when the file is non-modifiable or readonly.
                unnamed = "[No Name]", -- Text to show for unnamed buffers.
                newfile = "[New]", -- Text to show for newly created file before first write
            },
            section_separators = { left = "", right = "" },
            disabled_filetypes = { "NvimTree" },
        },
        sections = {
            lualine_a = {
                {
                    "mode",
                    fmt = function(s)
                        return mode_map[s] or s
                    end,
                    separator = { right = "", left = "" },
                },
            },
            lualine_b = { "filename", "fileformat", { "branch", icon = "" }, "diff" },
            lualine_c = {},
            lualine_x = {},
            lualine_y = { { lsp.getName, icon = lsp.icon }, "diagnostics", "filetype" },
            lualine_z = {
                { "progress", separator = { left = "", right = "" } },
            },
        },

        extensions = { "oil", "quickfix", "fzf", "symbols-outline" },
    }
}
