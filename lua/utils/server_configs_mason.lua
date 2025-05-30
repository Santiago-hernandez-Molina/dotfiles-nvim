local omnisharp_extended = require("omnisharp_extended")
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

    tinymist = {
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
