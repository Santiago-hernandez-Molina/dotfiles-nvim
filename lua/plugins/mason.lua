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
                    local banned_serves = { ["jdtls"] = true }
                    if banned_serves[server_name] then
                        return
                    end
                    local servers = require("utils.server_configs_mason")
                    local server = servers[server_name] or {}

                    server.capabilities = require("blink.cmp").get_lsp_capabilities(server.capabilities)
                    require("lspconfig")[server_name].setup(server)
                end,
            },
        }
    },
}
