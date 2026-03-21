return {
	"nickjvandyke/opencode.nvim",
	version = "*", -- Latest stable release
	enabled = true,

	config = function()
		vim.g.opencode_opts = {}
		vim.o.autoread = true

		vim.keymap.set({ "n", "x" }, "<leader>ae", function()
			require("opencode").ask("@this: ", { submit = true })
		end, { desc = "Ask opencode…" })

		vim.keymap.set({ "n", "x" }, "<leader>ax", function()
			require("opencode").select()
		end, { desc = "Execute opencode action…" })

		vim.keymap.set({ "n", "t" }, "<leader>at", function()
			require("opencode").toggle()
		end, { desc = "Toggle opencode" })

		vim.keymap.set({ "n", "x" }, "<leader>ao", function()
			return require("opencode").operator("@this ")
		end, { desc = "Add range to opencode", expr = true })

		vim.keymap.set("n", "<S-C-u>", function()
			require("opencode").command("session.half.page.up")
		end, { desc = "Scroll opencode up" })
		vim.keymap.set("n", "<S-C-d>", function()
			require("opencode").command("session.half.page.down")
		end, { desc = "Scroll opencode down" })

		vim.keymap.set("n", "+", "<leader>aa", { desc = "Increment under cursor", noremap = true })
		vim.keymap.set("n", "-", "<leader>ax", { desc = "Decrement under cursor", noremap = true })
	end,
}
