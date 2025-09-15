return {
    { "github/copilot.vim",          lazy = true },
    { "nvim-tree/nvim-web-devicons", lazy = true },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        "norcalli/nvim-colorizer.lua",
        lazy = false,
        opts = {
            '*'
        }
    },

    { 'terrortylor/nvim-comment', lazy = true },
    { "kaarmu/typst.vim",         ft = { "typst" } },
    { 'nanotee/sqls.nvim',        ft = { "sql" } },
    { 'tpope/vim-surround',       lazy = false }
}
