local telescope = {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"gbrlsnchs/telescope-lsp-handlers.nvim",
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", run = "make", name = "fzf" },
		{ "nvim-telescope/telescope-file-browser.nvim", name = "file_browser" },
	},

	config = function()
		require("telescope").setup({

			defaults = {
				file_ignore_patterns = {
					"node_modules/",
					"build/",
					"target/",
					"bin/",
					"venv/",
					"__pycache__",
				},
			},
			pickers = {
				find_files = {
					path_display = { "smart" },
				},
			},
			extensions = {
				"flutter",
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
				},
				file_browser = {
					use_fd = true,
				},
			},

			init = function()
				local tele = require("telescope")
				tele.load_extension("fzf")
				tele.load_extension("harpoon")
				tele.load_extension("file_browser")
			end,
		})
	end,
}

return telescope
