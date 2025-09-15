return {
    "saghen/blink.cmp",
    lazy = false,
    version = "1.*",
    dependencies = {
        "rafamadriz/friendly-snippets",
        {
            'saghen/blink.compat',
            version = '*',
            opts = {},
        },
    },
    opts = {
        sources = {
            default = { "lsp", "path", "snippets", "buffer", "cmdline" },
        },
        signature = { enabled = true },
        fuzzy = {
            implementation = "prefer_rust_with_warning",
            use_proximity = true,
            sorts = {
                'exact',
                'score',
                'sort_text',
            },
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
