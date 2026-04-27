vim.api.nvim_create_autocmd("LspAttach", {
	pattern = "*.html",
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client and client.name == "angularls" then
			vim.bo[args.buf].filetype = "htmlangular"
		end
	end,
	desc = "Set filetype to htmlangular when angularls attaches to HTML files",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"vue",
		"go",
        "lua",
		"html",
		"typescript",
		"javascript",
		"python",
		"css",
        "scss",
		"java",
        "cs",
	},
    callback = function() vim.treesitter.start() end,
})
