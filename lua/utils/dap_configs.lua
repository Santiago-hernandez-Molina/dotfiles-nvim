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
                type = "firefox",
                request = "launch",
                name = "Start Firefox with \"localhost\"",
                url = "http://localhost:3000",
                webRoot = "${workspaceFolder}",
                userDataDir = "${workspaceFolder}/.vscode/vscode-firefox-debug-userdatadir"
            }
        }
    },

    {
        langs = { "typescript", "vue" },
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
                type = "firefox",
                request = "launch",
                name = "Start Firefox with \"localhost\"",
                url = "http://localhost:5173",
                webRoot = "${workspaceFolder}",
                userDataDir = "${workspaceFolder}/.vscode/vscode-firefox-debug-userdatadir"
            },
            {
                type = "chrome",
                request = "launch",
                name = "Start Chrome with Vite",
                url = "http://localhost:5173",
                webRoot = "${workspaceFolder}",
                userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir",
                runtimeExecutable = "/usr/bin/google-chrome-stable",
            },
            {
                type = "chrome",
                request = "launch",
                name = "ng serve (chrome)",
                url = "http://localhost:4200",
                webRoot = "${workspaceFolder}",
                userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir",
                runtimeExecutable = "/usr/bin/google-chrome-stable",
            },
            {
                type = "firefox",
                request = "launch",
                name = "ng serve (firefox)",
                url = "http://localhost:4200",
                webRoot = "${workspaceFolder}",
                userDataDir = "${workspaceFolder}/.vscode/vscode-firefox-debug-userdatadir"
            },
        }
    }

}
