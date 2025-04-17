local js = vim.fn.stdpath("data") .. "/mason/bin/js-debug-adapter"
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
    }
}
