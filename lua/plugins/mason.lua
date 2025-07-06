return {
    {
        "mason-org/mason.nvim",
        version = "^1.0.0",
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
}
