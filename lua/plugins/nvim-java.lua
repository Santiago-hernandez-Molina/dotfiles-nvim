local jdtls = {
    root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}

return {
    "nvim-java/nvim-java",
    config = function()
        require("java").setup({
            spring_boot_tools = {
                enable = true,
                version = '1.40.0',
            },
            jdk = {
                auto_install = true,
                version = '17.0.2',
            },
            jdtls = {
                jvm = "/home/santiagohm/.local/share/nvim/mason/packages/openjdk-17/jdk-17.0.2/bin/java",
            }
        })
        jdtls.capabilities = vim.lsp.protocol.make_client_capabilities()
        jdtls.capabilities = require("blink.cmp").get_lsp_capabilities(jdtls.capabilities)
        jdtls.capabilities.textDocument.definition.dynamicRegistration = false
        require("lspconfig").jdtls.setup(jdtls)
    end,
}
