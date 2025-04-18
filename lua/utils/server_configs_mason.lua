local util = require("lspconfig.util")

return {
    pyright = {
        settings = {
            pyright = {
                disableLanguageServices = false,
                disableOrganizeImports = false,
                autoImportCompletion = true,
            },
            python = {
                analysis = {
                    autoSearchPaths = true,
                },
            },
        },
    },

    lua_ls = {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" },
                },
            },
        },
    },

    volar = {
        filetypes = { "typescript", "javascript", "vue" },
        root_dir = util.root_pattern("src/App.vue"),
        init_options = {
            vue = {
                hybridMode = false,
            },
        },
    },

    solargraph = {
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
    },

    lemminx = {
        filetypes = { "xml" },
    },

    omnisharp_mono = {
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
    },

    tailwindcss = {
        root_dir = util.root_pattern("tailwind.config.js"),
    },
}
