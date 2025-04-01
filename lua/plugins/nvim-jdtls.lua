local HOME = vim.fn.expand("$HOME")
local jdtls = {
    cmd = { HOME .. "/jdtls/init.sh" },
    root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
    flags = {
        debounce_text_changes = 150,
        allow_incremental_sync = true,
    },

    capabilities = {
        textDocument = { definition = { dynamicRegistration = false } },
        workspace = {
            didChangeWorkspaceFolders = {
                dynamicRegistration = true,
            },
        },
    },

    settings = {
        java = {
            signatureHelp = { enabled = true },
            eclipse = {
                downloadSources = true,
            },
            maven = {
                downloadSources = true,
            },
            implementationsCodeLens = {
                enabled = true,
            },
            referencesCodeLens = {
                enabled = true,
            },
            references = {
                includeDecompiledSources = true,
            },
            inlayHints = {
                parameterNames = {
                    enabled = "all", -- literals, all, none
                },
            },
            completion = {
                overwrite = true,
                favoriteStaticMembers = {
                    "org.hamcrest.MatcherAssert.assertThat",
                    "org.hamcrest.Matchers.*",
                    "org.hamcrest.CoreMatchers.*",
                    "org.junit.jupiter.api.Assertions.*",
                    "java.util.Objects.requireNonNull",
                    "java.util.Objects.requireNonNullElse",
                    "org.mockito.Mockito.*",
                },
            },

            configuration = {
                runtimes = {
                    -- {
                    --   name = "JavaSE-24",
                    --   path = "/home/santiagohm/.sdkman/candidates/java/24-tem",
                    -- },
                    {
                        name = "JavaSE-17",
                        path = "/home/santiagohm/.sdkman/candidates/java/17.0.14-amzn",
                        default = true
                    },
                    {
                        name = "JavaSE-1.8",
                        path = "/home/santiagohm/.sdkman/candidates/java/8.0.442-amzn",
                    },
                },
            },

            sources = {
                organizeImports = {
                    starThreshold = 9999,
                    staticStarThreshold = 9999,
                },
            },
            codeGeneration = {
                toString = {
                    template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
                },
                useBlocks = true,
            },
        },
    }
}

return {
    'mfussenegger/nvim-jdtls',
    lazy = false,
    priority = 1000,
    config = function()
        vim.api.nvim_create_autocmd({ "FileType" }, {
            pattern = "java",
            callback = function()
                jdtls.capabilities = vim.lsp.protocol.make_client_capabilities()
                jdtls.capabilities = require("blink.cmp").get_lsp_capabilities(jdtls.capabilities)
                jdtls.capabilities.textDocument.definition.dynamicRegistration = false
                require('jdtls').start_or_attach(jdtls)
            end,
            desc = "Start java language server",
        })
    end
}
