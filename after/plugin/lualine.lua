local colors = require("tokyonight.colors").setup()
local prompt = "#2d3149"

local bubbles_theme = {
	normal = {
		a = { fg = colors.bg, bg = colors.fg_sidebar },
		b = { bg = prompt },
		c = { fg = colors.fg, bg = colors.none },
	},

	insert = { a = { fg = colors.bg, bg = colors.green } },
	visual = { a = { fg = colors.bg, bg = colors.purple } },
	replace = { a = { fg = colors.bg, bg = colors.orange } },
	inactive = {},
}

local lsp = {
	getName = function()
		local msg = "No Active Lsp"
		local clients = vim.lsp.get_clients()
		if next(clients) == nil then
			return msg
		end
		for _, client in ipairs(clients) do
			return client.name
		end
		return msg
	end,
	icon = " ",
}

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = bubbles_theme,
		component_separators = {},
		symbols = {
			modified = "●", -- Text to show when the file is modified.
			readonly = "", -- Text to show when the file is non-modifiable or readonly.
			unnamed = "[No Name]", -- Text to show for unnamed buffers.
			newfile = "[New]", -- Text to show for newly created file before first write
		},
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "packer", "NvimTree" },
	},
	sections = {
		lualine_a = {
			{ "mode", separator = { right = "", left = "" }, right_padding = 1 },
		},
		lualine_b = { "fileformat", "filename", { "branch", icon = "" }, "diff" },
		lualine_c = {},
		lualine_x = {},
		lualine_y = { { lsp.getName, icon = lsp.icon }, "diagnostics", "filetype" },
		lualine_z = {
			{ "progress", separator = { left = "", right = "" }, left_padding = 1 },
		},
	},

	extensions = { "oil", "quickfix", "fzf", "symbols-outline" },
})
