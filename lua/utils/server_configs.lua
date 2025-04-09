local util = require("lspconfig.util")

local servers = {
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

    rust_analyzer = {
        cmd = { "rust-analyzer" },
        settings = {
            ["rust-analyzer"] = {
                imports = {
                    granularity = {
                        group = "module",
                    },
                },
                checkOnSave = {
                    command = "clippy",
                },
                cargo = {
                    buildScripts = {
                        enable = true,
                    },
                },
                procMacro = {
                    enable = true,
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

    tinymist = {
        cmd = { "tinymist" },
        filetypes = { "typst" },
        root_dir = "",
    },

    omnisharp = {
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
    angularls = {
        cmd = {
            "node",
            vim.fn.expand(
                "~/.nvm/versions/node/v14.21.3/lib/node_modules/@angular/language-server/index.js"),
            "--tsProbeLocations", vim.fn.expand(
                "~/.nvm/versions/node/v14.21.3/lib/node_modules/typescript/lib"),
            "--ngProbeLocations", vim.fn.expand(
                "~/.nvm/versions/node/v14.21.3/lib/node_modules/@angular/language-server"),
            "--stdio"
        },
        root_dir = util.root_pattern("angular.json", "project.json"),
        filetypes = { "typescript", "html" },
        on_new_config = function(new_config, new_root_dir)
            new_config.cmd = {
                "node",
                vim.fn.expand(
                    "~/.nvm/versions/node/v14.21.3/lib/node_modules/@angular/language-server/index.js"),
                "--tsProbeLocations", vim.fn.expand(
                    "~/.nvm/versions/node/v14.21.3/lib/node_modules/typescript/lib"),
                "--ngProbeLocations", vim.fn.expand(
                    "~/.nvm/versions/node/v14.21.3/lib/node_modules/@angular/language-server"),
                "--stdio"
            }
        end
    },

    tailwindcss = {
        root_dir = util.root_pattern("tailwind.config.js"),
    },
}

return servers
