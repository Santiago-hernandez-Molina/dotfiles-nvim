local jdtls = {
    handlers = {
        ["workspace/executeClientCommand"] = function(_, command, ctx)
            local cmd = command.command or ""


            if cmd == "editor.action.triggerParameterHints" then
                return {}
            end

            local default_handler = vim.lsp.handlers["workspace/executeClientCommand"]
            if default_handler then
                return default_handler(_, command, ctx)
            end
        end,
    },
    settings = {
        java = {
            configuration = {
                runtimes = {
                    {
                        name = "JavaSE-17",
                        path = "~/.sdkman/candidates/java/17.0.15-amzn",
                        default = true,
                    },
                    {
                        name = "JavaSE-1.8",
                        path = "~/.sdkman/candidates/java/8.0.452-amzn",
                    }
                }
            }
        }
    }
}

return {
    {
        "nvim-java/nvim-java",
        ft = { "java", "xml", "jproperties" },
        config = function()
            require("java").setup({
                spring_boot_tools = {
                    enable = true,
                    version = '1.50.0',
                },
                jdk = {
                    auto_install = true,
                    version = '17.0.2',
                },
                jdtls = {
                    jvm = "/home/santiagohm/.local/share/nvim/mason/packages/openjdk-17/jdk-17.0.2/bin/java",
                }
            })

            require("lspconfig").jdtls.setup(jdtls)
        end,
    },
}
