local highlight = {
	"Whitespace",
}

require("ibl").setup({
	indent = {
		char = "│",
		smart_indent_cap = true,
	},
	whitespace = {
		highlight = highlight,
		remove_blankline_trail = false,
	},
	scope = {
		show_start = false,
		show_end = false,
	},
})
