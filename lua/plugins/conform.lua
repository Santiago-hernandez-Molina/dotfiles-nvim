return {
	"stevearc/conform.nvim",
	lazy = false,
	priority = 45,
    keys = {
        {
            "<leader>mf",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            mode = { "n", "v" },
            desc = "Format buffer"
        },
    },
	opts = {
		notify_on_error = true,
		formatters_by_ft = {
			-- prettier
			typescriptreact = { "prettier" },
			javascriptreact = { "prettier" },
			htmlangular = { "prettier" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			json = { "prettier" },
			vue = { "prettier" },
			css = { "prettier" },
			scss = { "prettier" },
			--
			typst = { "prettypst" },
			lua = { "stylua" },
			python = { "autopep8" },
			go = { "gofumpt" },
			ruby = { "rubocop" },
			rust = { "rustfmt" },
			sh = { "shfmt" },
			zsh = { "shfmt" },
			yaml = { "yamlfmt" },
			html = { "htmlbeautifier" },
			bib = { "bibtex-tidy" },
			xml = { "xmlformat" },
			cs = { "csharpier" },
			sql = { "sql_formatter" },
			groovy = { "npm-groovy-lint" },
		},
	},
}
