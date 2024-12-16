local cmp = require("cmp")

local cmp_config = {
	mapping = cmp.mapping.preset.insert({
		["<C-y>"] = cmp.mapping.confirm({ select = true }),
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<TAB>"] = cmp.mapping.select_next_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-CR>"] = cmp.mapping.complete(),
	}),
	preselect = "none",
	completion = {
		completeopt = "menu,menuone",
	},
	window = {
		documentation = cmp.config.window.bordered(),
	},
	snippet = {
		expand = function(args)
			vim.snippet.expand(args.body)
		end,
	},
	sources = {
		{ name = "path", priority = 200 },
		{ name = "nvim_lsp", priority = 1000 },
		{ name = "nvim_lua" },
		{ name = "luasnip", keyword_length = 2, priority = 250 },
		{ name = "buffer", keyword_length = 3, priority = 250 },
		{
			name = "spell",
			priority = 100,
			option = {
				keep_all_entries = false,
				enable_in_context = function(params)
					return require("cmp.config.context").in_treesitter_capture("spell")
				end,
			},
		},
	},
}
return cmp_config
