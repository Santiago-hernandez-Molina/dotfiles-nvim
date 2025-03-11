require("luasnip.loaders.from_vscode").lazy_load()

require("blink.cmp").setup({
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	signature = { enabled = true },
	snippets = {
		preset = "luasnip",
	},
	completion = {
		menu = {
			draw = {
				columns = {
					{ "kind_icon", "kind", gap = 3 },
					{ "label", "label_description", gap = 3 },
				},
			},
		},
		accept = {
			auto_brackets = {
				enabled = true,
			},
		},
	},
})
