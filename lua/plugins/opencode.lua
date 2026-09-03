local toggle_opts = {
	split = "right",
	width = math.floor(vim.o.columns * 0.35),
}

local function find_opencode_win()
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local buf = vim.api.nvim_win_get_buf(win)
		if vim.bo[buf].buftype == "terminal" then
			return win
		end
	end
	return nil
end

local prev_main_win = nil

local function focus_opencode()
	local win = find_opencode_win()
	if win then
		prev_main_win = vim.api.nvim_get_current_win()
		vim.api.nvim_set_current_win(win)
	end
end

return {
	"nickjvandyke/opencode.nvim",
	version = "*",

	config = function()
		vim.g.opencode_opts = {
			ask = {
				prompt = "Ask opencode: ",
				completion = "customlist,v:lua.opencode_completion",
				snacks = {
					icon = "󰚩 ",
					win = {
						title_pos = "left",
						relative = "cursor",
						row = -3,
						col = 0,
						keys = {
							i_cr = { desc = "submit" },
						},
						b = { completion = true },
						bo = { filetype = "opencode_ask" },
						on_buf = function(win)
							vim.lsp.start(require("opencode.ui.ask.cmp"), {
								bufnr = win.buf,
							})
						end,
					},
				},
			},
			lsp = {
				enabled = false,
				filetypes = nil,
				handlers = {
					hover = { enabled = true, model = nil },
					code_action = { enabled = true },
				},
			},
			events = {
				enabled = true,
				reload = true,
				permissions = {
					enabled = true,
					idle_delay_ms = 1000,
					edits = { enabled = true },
				},
			},
		}

		vim.o.autoread = true

		local function paste_image()
			local path = vim.fn.input("Image path: ", "", "file")
			if path == "" then
				return
			end
			path = vim.fn.expand(path)
			if vim.fn.filereadable(path) == 0 then
				vim.notify("File not found: " .. path, vim.log.levels.ERROR)
				return
			end
			require("opencode").prompt(path .. " ")
		end


		-- <leader>ae → experimental: quick ask with @this context (testing)
		vim.keymap.set({ "n", "x" }, "<leader>ae", function()
			require("opencode").ask("@this: ", { submit = true })
		end, { desc = "Ask opencode…" })

		-- <leader>ax → opencode actions
		vim.keymap.set({ "n", "x" }, "<leader>ax", function()
			require("opencode").select()
		end, { desc = "Execute opencode action…" })

		-- <leader>ao → operator (send range)
		vim.keymap.set({ "n", "x" }, "<leader>ao", function()
			return require("opencode").operator("@this ")
		end, { desc = "Add range to opencode", expr = true })

		-- <leader>ai → paste image file
		vim.keymap.set({ "n", "x" }, "<leader>ai", paste_image, { desc = "Paste image to opencode" })

		-- Scroll keys in normal mode
		vim.keymap.set("n", "<S-C-u>", function()
			require("opencode").command("session.half.page.up")
		end, { desc = "Scroll opencode up" })
		vim.keymap.set("n", "<S-C-d>", function()
			require("opencode").command("session.half.page.down")
		end, { desc = "Scroll opencode down" })
	end,
}
