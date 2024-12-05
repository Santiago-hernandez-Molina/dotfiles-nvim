local lsp_zero = require("lsp-zero")

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
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"pyright",
		"volar",
		"lua_ls",
		"ts_ls",
		"angularls",
		"gopls",
	},
	handlers = {
		lsp_zero.default_setup,
	},
})

lsp_zero.set_sign_icons({
	error = "",
	warn = "",
	hint = "",
	info = "",
})

lsp_zero.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr, remap = false }

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
		require("conform").format({ async = true })
	end, opts)
end)

lsp_zero.setup({})

require("luasnip.loaders.from_vscode").lazy_load()

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
})

local cmp = require("cmp")
local cmp_config = require("cmp_config")
cmp.setup(cmp_config)
