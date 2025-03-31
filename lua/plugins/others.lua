return {
  { "github/copilot.vim",          lazy = true },
  { "nvim-tree/nvim-web-devicons", lazy = true },
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
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

  { "terrortylor/nvim-comment", lazy = true },
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  { "kaarmu/typst.vim", ft = { "typst" } },
}
