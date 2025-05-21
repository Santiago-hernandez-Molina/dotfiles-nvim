return {
    "mfussenegger/nvim-lint",
    lazy = true,
    config = function()
        local lint = require("lint")

        lint.linters_by_ft = {
        }

        lint.default_severity = {
            ["error"] = vim.diagnostic.severity.ERROR,
            ["warning"] = vim.diagnostic.severity.WARN,
            ["information"] = vim.diagnostic.severity.INFO,
            ["hint"] = vim.diagnostic.severity.HINT,
        }

        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
