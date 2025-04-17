return {
    {
        langs = { "javascript" },
        settings = {
            {
                name = "Launch file",
                type = "pwa-node",
                request = "launch",
                program = "${file}",
                cwd = "${workspaceFolder}",
            },
            {
                type = "pwa-node",
                request = "attach",
                name = "Attach",
                processId = require 'dap.utils'.pick_process,
                cwd = "${workspaceFolder}",
            },
            {
                type = "chrome",
                request = "launch",
                name = "Start Chrome with \"localhost\"",
                url = "http://localhost:3000",
                webRoot = "${workspaceFolder}",
                userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir"
            }
        }
    },

    {
        langs = { "typescript" },
        settings = {

            {
                name = "Launch file",
                type = "pwa-node",
                request = "launch",
                cwd = "${workspaceFolder}",
                runtimeExecutable = "ts-node",
                args = { "${file}" },
                sourceMaps = true,
                resolveSourceMapLocations = {
                    "${workspaceFolder}/**",
                    "!**/node_modules/**"
                },
                protocol = "inspector",
                skipFiles = { "<node_internals>/**" },
            },
            {
                name = "Jest Current File",
                type = "pwa-node",
                request = "launch",
                runtimeExecutable = "${workspaceFolder}/node_modules/.bin/jest",
                args = {
                    "${file}",
                    "--coverage=false",
                    "--runInBand",
                },
                cwd = "${workspaceFolder}",
                console = "integratedTerminal",
                sourceMaps = true,
                protocol = "inspector",
            },
            {
                type = "chrome",
                request = "launch",
                name = "Start Chrome with \"localhost\"",
                url = "http://localhost:3000",
                webRoot = "${workspaceFolder}",
                userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir"
            },
            {
                type = "chrome",
                request = "launch",
                name = "ng serve (custom)",
                url = "http://localhost:4200",
                webRoot = "${workspaceFolder}",
                userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir"
            }
        }
    }

}
