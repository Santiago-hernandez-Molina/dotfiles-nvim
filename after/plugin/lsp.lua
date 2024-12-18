require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
	pip = {
		upgrade_pip = true,
		install_args = {},
	},
	check_outdated_packages_on_open = false,
})

require("mason-lspconfig").setup({
	handlers = {
		function(server_name)
			local server = {}
			server.capabilities = vim.lsp.protocol.make_client_capabilities()
			require("lspconfig")[server_name].setup(server)
		end,
	},
})

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		local opts = { buffer = event.buf, remap = false }

		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "<leader>mi", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<leader>mh", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>mr", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<leader>ma", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "<leader>mn", vim.diagnostic.goto_next)
		vim.keymap.set("n", "<leader>mp", vim.diagnostic.goto_prev)
		vim.keymap.set("n", "<leader>mm", vim.diagnostic.open_float, opts)

		vim.keymap.set("n", "gi", function()
			require("telescope.builtin").lsp_implementations()
		end, opts)

		vim.keymap.set("n", "gr", function()
			require("telescope.builtin").lsp_references()
		end, opts)

		vim.keymap.set("n", "<leader>ml", function()
			require("telescope.builtin").diagnostics({ severity_bound = 0 })
		end, opts)

		vim.keymap.set({ "n", "v" }, "<leader>mf", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, opts)
	end,
})

-- DIAGNOSTICS
vim.diagnostic.config({
	virtual_text = true,
	severity_sort = true,
	underline = true,
	float = {
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
	update_in_insert = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "⚑",
			[vim.diagnostic.severity.INFO] = "",
		},
	},
})

-- SERVER CONFIG
local servers = require("server_configs")
local lspconfig = require("lspconfig")

for server, config in pairs(servers) do
	config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
	lspconfig[server].setup(config)
end
