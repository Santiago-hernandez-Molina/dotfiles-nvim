return {
    {
        "neovim/nvim-lspconfig",
        priority = 70,
        lazy = false,
        dependencies = {
            "styled-components/vim-styled-components",
            "Hoffs/omnisharp-extended-lsp.nvim",
        },

        init = function()
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
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = "",
                        [vim.diagnostic.severity.WARN] = "",
                        [vim.diagnostic.severity.HINT] = "⚑",
                        [vim.diagnostic.severity.INFO] = "",
                    },
                },
            })

            vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
                vim.lsp.handlers.signature_help, {
                    border = "solid",
                    title = "help"
                })

            vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
                vim.lsp.handlers.hover, {
                    border = "solid",
                    title = "hover"
                })
        end,

        config = function()
            local servers = require("utils.server_configs")
            local lspconfig = require("lspconfig")


            for server, config in pairs(servers) do
                config.capabilities = vim.lsp.protocol.make_client_capabilities()
                config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)

                lspconfig[server].setup(config)
            end
        end
    },
}
