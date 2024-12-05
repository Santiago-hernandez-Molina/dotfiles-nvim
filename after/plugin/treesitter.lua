require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"rust",
		"vimdoc",
		"php",
		"lua",
		"vim",
		"typescript",
		"go",
		"ruby",
		"python",
		"java",
		"vue",
		"angular",
		"css",
		"html",
		"tsx",
		"bash"
	},

	sync_install = false,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
