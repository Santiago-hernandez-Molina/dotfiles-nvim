return {
    "Saghen/blink.cmp",
    version = "1.*",
    dependencies = {
        "Kaiser-Yang/blink-cmp-avante",
        "rafamadriz/friendly-snippets",
        {
            'saghen/blink.compat',
            version = '*',
            opts = {},
        },
    },
    opts = {
        sources = {
            default = { "avante", "lsp", "path", "snippets", "buffer", "cmdline",
            },
            providers = {
                avante = {
                    module = 'blink-cmp-avante',
                    name = 'Avante',
                    opts = {
                        -- options for blink-cmp-avante
                    }
                }
            },
        },
        signature = { enabled = true },
        fuzzy = {
            implementation = "lua",
            use_proximity = true,
        },

        completion = {
            trigger = { show_on_keyword = true },
            menu = {
                draw = {
                    columns = {
                        { "kind_icon", gap = 3 },
                        { "label",     "kind", gap = 3 },
                    },
                },
            },

            ghost_text = { enabled = false },
            documentation = {
                auto_show = true,
            },

            accept = {
                auto_brackets = {
                    enabled = true,
                },
            },
        },
        cmdline = { completion = { menu = { auto_show = true } } },
    },
}
