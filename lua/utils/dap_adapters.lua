local js = vim.fn.stdpath("data") .. "/mason/bin/js-debug-adapter"
local firefox = vim.fn.stdpath("data") .. "/mason/bin/firefox-debug-adapter"
local chrome = vim.fn.stdpath("data") .. "/mason/bin/chrome-debug-adapter"

return {

    ["pwa-node"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
            command = "zsh",
            args = { js, "${port}" },
        },
    },
    chrome = {
        type = "executable",
        command = "zsh",
        args = { chrome }
    },
    firefox = {
        type = "executable",
        command = "zsh",
        args = { firefox }
    }
}
