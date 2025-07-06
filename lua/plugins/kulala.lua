return {
    "mistweaverco/kulala.nvim",
    lazy = true,
    keys = {
        { "<leader>Rs", desc = "Send request" },
        { "<leader>Ra", desc = "Send all requests" },
        { "<leader>Rb", desc = "Open scratchpad" },
    },
    fb = { "http", "rest" },
    opts = {
        -- your configuration comes here
        global_keymaps = true,
        -- default formatters/pathresolver for different content types
        contenttypes = {
            ["application/json"] = {
                ft = "json",
                formatter = vim.fn.executable("jq") == 1 and { "jq", "." },
                pathresolver = function(...)
                    return require("kulala.parser.jsonpath").parse(...)
                end,
            },
            ["application/xml"] = {
                ft = "xml",
                formatter = vim.fn.executable("xmllint") == 1 and { "xmllint", "--format", "-" },
                pathresolver = vim.fn.executable("xmllint") == 1 and { "xmllint", "--xpath", "{{path}}", "-" },
            },
            ["text/html"] = {
                ft = "html",
                formatter = vim.fn.executable("xmllint") == 1 and { "xmllint", "--format", "--html", "-" },
                pathresolver = nil,
            },
        },
    },
}
