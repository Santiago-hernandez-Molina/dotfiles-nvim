return {
	{
		"folke/tokyonight.nvim",
		lazy = true,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "night",
				light_style = "day",
				transparent = true,
				terminal_colors = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = false },
					functions = {},
					variables = {},
					sidebars = "transparent",
					floats = "transparent",
				},
				sidebars = {
					"qf",
					"help",
					"packer",
					"dap",
					"NvimTree",
					"Avante",
					"AvanteInput",
					"AvanteSelectedFiles",
				},
				hide_inactive_statusline = true,
				dim_inactive = true,
				lualine_bold = true,

				cache = false, -- When set to true, the theme will be cached for better performance

				---@type table<string, boolean|{enabled:boolean}>
				plugins = {
					all = package.loaded.lazy == nil,
					auto = true,
				},

				on_highlights = function(hl, c)
					hl.AvanteSidebarWinSeparator = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}

					hl.AvanteSidebarWinHorizontalSeparator = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}

					hl.AvanteSidebarNormal = {
						bg = c.bg_dark,
						fg = c.fg,
					}
				end,
			})
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}
