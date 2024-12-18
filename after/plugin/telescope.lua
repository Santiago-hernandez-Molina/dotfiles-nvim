local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fc", function()
	builtin.find_files({
		cwd = vim.fn.stdpath("config"),
	})
end, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			"build",
			"bin",
			"venv",
			"__pycache__",
		},
	},
	pickers = {},
	extensions = {
		"flutter",
		fzf = {},
	},
})

require("telescope").load_extension("fzf")
require("telescope").load_extension('harpoon')
