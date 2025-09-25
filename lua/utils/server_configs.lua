local util = require("lspconfig.util")

return {
    -- rust_analyzer = {
    --     cmd = { "rust-analyzer" },
    --     settings = {
    --         ["rust-analyzer"] = {
    --             imports = {
    --                 granularity = {
    --                     group = "module",
    --                 },
    --             },
    --             checkOnSave = true,
    --             cargo = {
    --                 buildScripts = {
    --                     enable = true,
    --                 },
    --             },
    --             procMacro = {
    --                 enable = true,
    --             },
    --         },
    --     },
    -- },


    angularls = {
        cmd = {
            "node",
            vim.fn.expand(
                "~/.nvm/versions/node/v14.21.3/lib/node_modules/@angular/language-server/index.js"),
            "--tsProbeLocations", vim.fn.expand(
            "~/.nvm/versions/node/v14.21.3/lib/node_modules/typescript/lib"),
            "--ngProbeLocations", vim.fn.expand(
            "~/.nvm/versions/node/v14.21.3/lib/node_modules/@angular/language-server"),
            "--stdio"
        },
        root_dir = util.root_pattern("angular.json", "project.json"),
        filetypes = { "typescript", "html", "htmlangular" },
        on_new_config = function(new_config, new_root_dir)
            new_config.cmd = {
                "node",
                vim.fn.expand(
                    "~/.nvm/versions/node/v14.21.3/lib/node_modules/@angular/language-server/index.js"),
                "--tsProbeLocations", vim.fn.expand(
                "~/.nvm/versions/node/v14.21.3/lib/node_modules/typescript/lib"),
                "--ngProbeLocations", vim.fn.expand(
                "~/.nvm/versions/node/v14.21.3/lib/node_modules/@angular/language-server"),
                "--stdio"
            }
            new_config.root_dir = util.root_pattern("angular.json", "project.json")
            new_config.filetypes = { "typescript", "html", "htmlangular" }
        end
    },

    -- djlsp = {
    --     cmd = { "djlsp" },
    --     root_dir = require("lspconfig.util").root_pattern("manage.py", ".git"),
    -- },
    -- kulala_ls = {}
}
