return {
    'mfussenegger/nvim-dap',
    dependencies = {
        'nvim-neotest/nvim-nio',
        'rcarriga/nvim-dap-ui',
        'theHamsta/nvim-dap-virtual-text',
        "mxsdev/nvim-dap-vscode-js",
        {
            "microsoft/vscode-js-debug",
            build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
            lazy = true,
        },

        "leoluz/nvim-dap-go",
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        dapui.setup({
            layouts = {
                {
                    elements = {
                        {
                            id = "console",
                            size = 0.4
                        },
                        {
                            id = "stacks",
                            size = 0.3
                        },
                        {
                            id = "breakpoints",
                            size = 0.3
                        },
                    },
                    position = "left",
                    size = 50
                }
            }
        })

        require("nvim-dap-virtual-text").setup()
        require("dap-go").setup()

        -- SETUP ADAPTERS
        local adapters = require("utils.dap_adapters")
        for adapter, config in pairs(adapters) do
            dap.adapters[adapter] = config
        end

        local dap_configs = require("utils.dap_configs")
        for _, config in ipairs(dap_configs) do
            for _, language in ipairs(config.langs) do
                require("dap").configurations[language] = config.settings
            end
        end

        vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
        vim.keymap.set("n", "<leader>dc", dap.continue)
        vim.keymap.set("n", "<leader>dT", dap.terminate)
        vim.keymap.set("n", "<leader>dt", dapui.toggle)
        vim.keymap.set("n", "<leader>de", dapui.eval)

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
    end
}
