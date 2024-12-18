require("blink.compat").setup({
	impersonate_nvim_cmp = true,
})

require("blink.cmp").setup({
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	signature = { enabled = true },
	completion = {
		menu = {
			draw = {
				columns = { { "kind_icon", "kind", gap = 3 }, { "label", "label_description", gap = 3 } },
			},
		},
	},
	opts_extend = { "sources.default" },
})

