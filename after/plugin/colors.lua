local config = {
	style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "day", -- The theme is used when the background is set to light
	transparent = true,
	terminal_colors = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		sidebars = "transparent", -- style for sidebars, see below
		floats = "night", -- style for floating windows
	},
	sidebars = { "qf", "help", "packer", "dap", "NvimTree" },
	hide_inactive_statusline = true,
	dim_inactive = true, -- dims inactive windows
	lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

	on_highlights = function(hl, c)
		local prompt = "#2d3149"
		hl.TelescopeNormal = {
			bg = c.bg_dark,
			fg = c.fg_dark,
		}
		hl.TelescopeBorder = {
			bg = c.bg_dark,
			fg = c.bg_dark,
		}
		hl.TelescopePromptNormal = {
			bg = prompt,
			fg = c.fg_dark,
		}
		hl.TelescopePromptBorder = {
			bg = prompt,
			fg = prompt,
		}
		hl.TelescopePromptTitle = {
			bg = prompt,
			fg = prompt,
		}
		hl.TelescopePreviewTitle = {
			bg = prompt,
			fg = c.orange,
		}
		hl.TelescopeResultsTitle = {
			bg = prompt,
			fg = c.orange,
		}
	end,
}
require("tokyonight").setup(config)
vim.cmd("colorscheme tokyonight")
