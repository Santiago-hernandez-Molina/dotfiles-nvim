return {
	{
		"yetone/avante.nvim",
		event = "VeryLazy",
		enabled = false,
		version = false,
		opts = {
			provider = "copilot",
			providers = {
				copilot = {
					model = "gpt-4.1",
				},
			},
			windows = {
				---@type "right" | "left" | "top" | "bottom"
				position = "right", -- the position of the sidebar
				wrap = true, -- similar to vim.o.wrap
				width = 40, -- default % based on available width
				sidebar_header = {
					enabled = true, -- true, false to enable/disable the header
					align = "center", -- left, center, right for title
					rounded = false,
				},
				edit = {
					border = "rounded",
					start_insert = true, -- Start insert mode when opening the edit window
				},
				ask = {
					floating = false, -- Open the 'AvanteAsk' prompt in a floating window
					start_insert = true, -- Start insert mode when opening the ask window
					---@type "ours" | "theirs"
					focus_on_apply = "ours", -- which diff to focus after applying
				},
			},
			behaviour = {
				auto_set_highlight_group = true,
				jump_result_buffer_on_finish = false,
				auto_approve_tool_permissions = false,
				confirmation_ui_style = "popup",
				support_paste_from_clipboard = true,
			},
			disabled_tools = { "web_search" },
			mappings = {
				sidebar = {
					apply_all = "A",
					jump = {
						next = "]]",
						prev = "[[",
					},
					apply_cursor = "a",
					retry_user_request = "r",
					edit_user_request = "e",
					remove_file = "d",
					close = { "<Esc>", "q" },
					close_from_input = { normal = "q", insert = "<C-d>" },
				},
			},
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			{
				"HakonHarnes/img-clip.nvim",
				event = "VeryLazy",
				opts = {
					-- recommended settings
					default = {
						embed_image_as_base64 = false,
						prompt_for_file_name = false,
						drag_and_drop = {
							insert_mode = true,
						},
						use_absolute_path = true,
					},
				},
			},
		},
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		opts = {
			file_types = { "markdown", "Avante" },
		},
		ft = { "markdown", "Avante" },
	},
}
