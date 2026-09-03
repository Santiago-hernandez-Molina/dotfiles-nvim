return {
	"jiaoshijie/undotree",
	lazy = true,
	keys = {
		-- { "<leader>u",  require("undotree").toggle, desc = "Toggle UndoTree" },
		-- { "<leader>uo", require("undotree").open,   desc = "Open UndoTree" },
		-- { "<leader>uc", require("undotree").close,  desc = "Close UndoTree" },
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		float_diff = false, -- using float window previews diff, set this `true` will disable layout option
		layout = "left_bottom", -- "left_bottom", "left_left_bottom"
		position = "left", -- "right", "bottom"
		ignore_filetype = {
			"undotree",
			"undotreeDiff",
			"qf",
			"spectre_panel",
			"tsplayground",
		},
		window = {
			winblend = 0,
		},
		keymaps = {
			["move_next"] = "j",
			["move_prev"] = "k",
			["move2parent"] = "gj",
			["move_change_next"] = "J",
			["move_change_prev"] = "K",
			["action_enter"] = "<cr>",
			["enter_diffbuf"] = "p",
			["quit"] = "q",
		},
	},
}
