return {
    {
        "mason-org/mason.nvim",
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

            check_outdated_packages_on_open = false,
        },
    },
}
