local omnisharp_extended = require("omnisharp_extended")
local util = require("lspconfig.util")
local vue_language_server_path = vim.fn.stdpath('data') ..
    "/mason/packages/vue-language-server/node_modules/@vue/language-server"
local vue_plugin = {
    name = '@vue/typescript-plugin',
    location = vue_language_server_path,
    languages = { 'vue' },
    configNamespace = 'typescript',
}

return {
    basedpyright = {
        settings = {
            basedpyright = {
                typeCheckingMode = "standard",
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


    vue_ls = {
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
        root_markers = { "tailwind.config.js" },
    },

    gopls = {},
    ts_ls = {
    },
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
        filetypes = { 'vue', "typescript", "javascript" },
    },
    cssls = {},
    jsonls = {},
    sqls = {
        on_attach = function(client, bufnr)
            require('sqls').on_attach(client, bufnr)
        end
    },
    html = {},
    emmet_language_server = {},
    elixirls = {},
}
