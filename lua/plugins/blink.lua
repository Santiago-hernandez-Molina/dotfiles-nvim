return {
	"Saghen/blink.cmp",
	version = "1.*",
	dependencies = {
		"Kaiser-Yang/blink-cmp-avante",
		"rafamadriz/friendly-snippets",
	},
	opts = {
		sources = {
			default = { "lsp", "path", "snippets", "buffer", "avante", "omni", "cmdline" },
			providers = {
				avante = {
					module = "blink-cmp-avante",
					name = "Avante",
					opts = {
					},
				},
			},
		},
		signature = { enabled = true },
		fuzzy = {
			implementation = "lua",
			use_proximity = true,
			sorts = {
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
				"exact",
			},
		},

		completion = {
			trigger = { show_on_keyword = true },
			menu = {
				draw = {
					columns = {
						{ "kind_icon", gap = 3 },
						{ "label", "kind", gap = 3 },
					},
				},
			},
			ghost_text = { enabled = true },
			documentation = {
				auto_show = false,
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
