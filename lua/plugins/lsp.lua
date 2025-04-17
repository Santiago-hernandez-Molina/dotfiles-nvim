return {
    {
        "neovim/nvim-lspconfig",
        priority = 70,
        lazy = false,
        dependencies = {
            "Hoffs/omnisharp-extended-lsp.nvim",
        },

        init = function()
            local _border = "rounded"

            local function bordered_hover(_opts)
                _opts = _opts or {}
                return vim.lsp.buf.hover(vim.tbl_deep_extend("force", _opts, {
                    border = _border
                }))
            end

            local function bordered_signature_help(_opts)
                _opts = _opts or {}
                return vim.lsp.buf.signature_help(vim.tbl_deep_extend("force", _opts, {
                    border = _border
                }))
            end

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

            vim.api.nvim_create_autocmd("LspAttach", {
                desc = "LSP actions",
                callback = function(event)
                    local opts = { buffer = event.buf, remap = false }

                    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
                    vim.keymap.set("n", "<leader>mi", bordered_signature_help, opts)
                    vim.keymap.set("n", "<leader>mh", bordered_hover, opts)
                    vim.keymap.set("n", "<leader>mr", vim.lsp.buf.rename, opts)
                    vim.keymap.set({ "n", "v" }, "<leader>ma", vim.lsp.buf.code_action, opts)
                    vim.keymap.set("n", "<leader>mn", vim.diagnostic.goto_next)
                    vim.keymap.set("n", "<leader>mp", vim.diagnostic.goto_prev)
                    vim.keymap.set("n", "<leader>mm", vim.diagnostic.open_float, opts)
                end,
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
