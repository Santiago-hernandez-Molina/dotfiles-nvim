local colors = require("tokyonight.colors").setup()
local prompt = "#2d3149"

local bubbles_theme = {
	normal = {
		a = { fg = colors.bg, bg = colors.fg_sidebar },
		b = { fg = colors.fg_dark, bg = prompt },
		c = { fg = colors.fg, bg = colors.none },
	},

	insert = { a = { fg = colors.bg, bg = colors.green } },
	visual = { a = { fg = colors.bg, bg = colors.purple } },
	replace = { a = { fg = colors.bg, bg = colors.orange } },

	inactive = {
		a = { fg = colors.white, bg = colors.none },
		b = { fg = colors.white, bg = colors.none },
		c = { fg = colors.black, bg = colors.none },
	},
}

local lsp = {
	getName = function()
		local msg = "No Active Lsp"
		local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
		local clients = vim.lsp.get_clients()
		if next(clients) == nil then
			return msg
		end
		for _, client in ipairs(clients) do
			return client.name
		end
		return msg
	end,
	icon = " :",
	color = { fg = colors.fg },
}

require("lualine").setup({
	options = {
		theme = bubbles_theme,
		component_separators = { left = "", right = "" },
		symbols = {
			modified = "●", -- Text to show when the file is modified.
			readonly = "", -- Text to show when the file is non-modifiable or readonly.
			unnamed = "[No Name]", -- Text to show for unnamed buffers.
			newfile = "[New]", -- Text to show for newly created file before first write
		},
		section_separators = { left = " ", right = " " },
		disabled_filetypes = { "packer", "NvimTree" },
	},
	sections = {
		lualine_a = {
			{ "mode", separator = { right = " ", left = "" }, right_padding = 2 },
		},
		lualine_b = { "filename", { "branch", icon = "" }, "fileformat" },
		lualine_c = {},
		lualine_x = {},
		lualine_y = { lsp.getName, "diagnostics", "filetype" },
		lualine_z = {
			{ "progress", separator = { left = " ", right = "" }, left_padding = 2 },
		},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},

	tabline = {},
	extensions = {},
})
