local omnisharp_extended = require("omnisharp_extended")
--
local vue_language_server_path = vim.fn.stdpath("data")
	.. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

local vue_plugin = {
	name = "@vue/typescript-plugin",
	location = vue_language_server_path,
	languages = { "vue" },
	configNamespace = "typescript",
}

return {
	pyright = {
		settings = {
			pyright = {
				typeCheckingMode = "standard",
			},
		},
	},

	tinymist = {},

	lua_ls = {
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
			},
		},
	},

	vue_ls = {},

	lemminx = {
		filetypes = { "xml" },
	},

	omnisharp = {
		on_attach = function(client, bufnr)
			local filetype = vim.api.nvim_buf_get_option(bufnr, "filetype")
			if filetype == "cs" then
				vim.keymap.set(
					"n",
					"gd",
					omnisharp_extended.lsp_definition,
					{ buffer = bufnr, desc = "OmniSharp Extended Definition" }
				)
			end
		end,

		handlers = {
			["textDocument/definition"] = omnisharp_extended.definition_handler,
			["textDocument/typeDefinition"] = omnisharp_extended.type_definition_handler,
			["textDocument/references"] = omnisharp_extended.references_handler,
			["textDocument/implementation"] = omnisharp_extended.implementation_handler,
		},

		settings = {
			FormattingOptions = {
				EnableEditorConfigSupport = true,
				OrganizeImports = true,
			},
			MsBuild = {
				LoadProjectsOnDemand = false,
			},
			RoslynExtensionsOptions = {
				EnableAnalyzersSupport = true,
				EnableImportCompletion = true,
				AnalyzeOpenDocumentsOnly = false,
				EnableDecompilationSupport = true,
			},
			Sdk = {
				IncludePrereleases = true,
			},
		},
	},

	tailwindcss = {
		root_markers = { "tailwind.config.js" },
	},

	gopls = {},
	vtsls = {
		settings = {
			vtsls = {
				tsserver = {
					globalPlugins = {
						vue_plugin,
					},
				},
			},
		},
		filetypes = { "vue", "typescript", "javascript" },
	},
	cssls = {
		filetypes = { "css", "scss" },
    },
	jsonls = {},
	sqls = {},
	html = {},
	emmet_language_server = {},
	docker_compose_language_server = {},
	yamlls = {},
	hyprls = {},
	taplo = {},
	angularls = {},
}
