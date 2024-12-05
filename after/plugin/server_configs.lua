local HOME = os.getenv("HOME")
local util = require("lspconfig.util")

local pyright_opts = {
	pyright = {
		disableLanguageServices = false,
		disableOrganizeImports = false,
		autoImportCompletion = true,
	},
	python = {
		analysis = {
			autoSearchPaths = false,
			typeCheckingMode = "basic", -- off, basic, strict
		},
	},
}
require("lspconfig").pyright.setup({
	settings = pyright_opts,
})

require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

require("lspconfig").volar.setup({
	filetypes = { "typescript", "javascript", "vue" },
	root_dir = util.root_pattern("src/App.vue"),
	init_options = {
		vue = {
			hybridMode = false,
		},
	},
})

require("lspconfig").solargraph.setup({
	settings = {
		solargraph = {
			autoformat = false,
			formatting = false,
			completion = true,
			diagnostic = true,
			folding = true,
			references = true,
			rename = true,
			symbols = true,
		},
	},
})

require("lspconfig").lemminx.setup({
	cmd = { "java", "-jar", HOME .. "/lemminx/org.eclipse.lemminx-uber.jar" },
	filetypes = { "xml" },
})

require("lspconfig").tinymist.setup({
	cmd = { "tinymist" },
	filetypes = { "typst" },
	root_dir = "",
})

require("lspconfig").omnisharp.setup({
	handlers = {
		["textDocument/definition"] = require("omnisharp_extended").definition_handler,
		["textDocument/typeDefinition"] = require("omnisharp_extended").type_definition_handler,
		["textDocument/references"] = require("omnisharp_extended").references_handler,
		["textDocument/implementation"] = require("omnisharp_extended").implementation_handler,
	},
	settings = {
		FormattingOptions = {
			EnableEditorConfigSupport = nil,
			OrganizeImports = true,
		},
		RoslynExtensionsOptions = {
			EnableAnalyzersSupport = nil,
			EnableImportCompletion = true,
			AnalyzeOpenDocumentsOnly = true,
			EnableDecompilationSupport = true,
		},
		Sdk = {
			IncludePrereleases = true,
		},
	},
})

require("lspconfig").dartls.setup({})
require("lspconfig").angularls.setup({})
require("lspconfig").ts_ls.setup({})
require("lspconfig").tailwindcss.setup({
	root_dir = util.root_pattern("tailwind.config.js"),
})

