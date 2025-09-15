local firefox = vim.fn.stdpath("data") .. "/mason/bin/firefox-debug-adapter"
local chrome = vim.fn.stdpath("data") .. "/mason/bin/chrome-debug-adapter"

return {

    chrome = {
        type = "executable",
        command = "zsh",
        args = { chrome }
    },
    firefox = {
        type = "executable",
        command = "zsh",
        args = { firefox }
    },
    zen = {
        type = "executable",
        command = "zsh",
        args = { chrome }
    },
}
