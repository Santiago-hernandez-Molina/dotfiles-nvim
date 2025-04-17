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
            sorts = {
                "exact",
                function(item_a, item_b)
                    -- Assign scores based on provider
                    local provider_scores = {
                        lsp = 100,
                        avante = 95,
                        snippets = 90,
                        path = 70,
                        buffer = 60,
                        omni = 50,
                        cmdline = 40,
                    }

                    -- Get the provider names
                    local provider_a = item_a.source and item_a.source.name
                    local provider_b = item_b.source and item_b.source.name

                    -- Apply provider scores if available
                    local score_a = provider_scores[provider_a] or 0
                    local score_b = provider_scores[provider_b] or 0

                    -- If scores differ, use them
                    if score_a ~= score_b then
                        return score_a > score_b
                    end

                    -- Fall back to original scoring logic
                    return item_a.score > item_b.score
                end,
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
