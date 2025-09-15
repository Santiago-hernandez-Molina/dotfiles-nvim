return {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    event = "BufReadPost",
    config = function()
        require("nvim-treesitter.configs").setup({
            auto_install = false,
            ensure_installed = {
                "rust",
                "vimdoc",
                "php",
                "lua",
                "vim",
                "typescript",
                "go",
                "ruby",
                "python",
                "java",
                "vue",
                "angular",
                "css",
                "html",
                "tsx",
                "bash",
            },

            sync_install = false,
            indent = { enable = false },

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = true,
            },
        })
    end
}
