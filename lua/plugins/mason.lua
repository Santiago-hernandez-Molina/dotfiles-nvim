return {
    {
        'williamboman/mason.nvim',
        lazy = false,
        priority = 60,
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },

            pip = {
                upgrade_pip = true,
                install_args = {},
            },

            check_outdated_packages_on_open = false,
        },
    },

    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        priority = 55,
        opts = {
            ensure_installed = {
                -- lsp
                "lua_ls",
                "gopls",
                "volar",
                "lemminx",
                "jsonls",
            },

            handlers = {
                function(server_name)
                    local servers = require("utils.server_configs")
                    if server_name == "jdtls" then
                        return
                    end

                    if servers[server_name] ~= nil then
                        return
                    end

                    local server = {}
                    server.capabilities = vim.lsp.protocol.make_client_capabilities()
                    require("lspconfig")[server_name].setup(server)
                end,
            },
        }
    },

    {
        "zapling/mason-conform.nvim",
        priority = 40,
        lazy = false,
    },
}
