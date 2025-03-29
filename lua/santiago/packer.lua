vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  -- Colorscheme
  use("folke/tokyonight.nvim")
  use("Shatur/neovim-ayu")

  -- GitHub Copilot
  use({
    "github/copilot.vim",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_enabled = false
      vim.g.copilot_node_command = "~/.nvm/versions/node/v20.19.0/bin/node"
    end,
  })

  use({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    config = function()
      require('render-markdown').setup({
        file_types = { "markdown", "Avante" },
      })
    end,
  })

  -- Avante
  use {
    'yetone/avante.nvim',
    branch = 'main',
    run = 'make',
    requires = {
      'MunifTanjim/nui.nvim'
    }
  }

  -- Treesitter
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

  -- UI Enhancements
  use("nvim-tree/nvim-web-devicons")
  use("stevearc/conform.nvim")
  use("mfussenegger/nvim-lint")
  use("folke/snacks.nvim")

  -- Navigation
  use({
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { "nvim-lua/plenary.nvim" },
  })

  -- Git Integration
  use({
    "kdheepak/lazygit.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })

  -- Autopairs
  use("windwp/nvim-autopairs")

  -- Statusline
  use({ "nvim-lualine/lualine.nvim" })

  -- Telescope
  use({ "gbrlsnchs/telescope-lsp-handlers.nvim" })
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    requires = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim",   run = "make",         name = "fzf" },
      { "nvim-telescope/telescope-file-browser.nvim", name = "file_browser" },
    },
  })

  -- Undo Tree
  use({
    "jiaoshijie/undotree",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })

  -- LSP Configuration
  use({
    "neovim/nvim-lspconfig",
    requires = {
      {
        "Saghen/blink.cmp",
        version = "*",
        requires = {
          'Kaiser-Yang/blink-cmp-avante',
        },
      },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
      { "rafamadriz/friendly-snippets" },
      { "L3MON4D3/LuaSnip" },
    },
  })

  -- Comments
  use("terrortylor/nvim-comment")

  -- Presence
  use("andweeb/presence.nvim")

  -- Colorizer
  use("norcalli/nvim-colorizer.lua")

  -- Oil
  use({
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  })

  -- Specific for servers
  use("styled-components/vim-styled-components")
  use("Hoffs/omnisharp-extended-lsp.nvim")

  -- Flutter Tools
  use({
    "akinsho/flutter-tools.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })

  -- Typst
  use({ "kaarmu/typst.vim", ft = { "typst" } })

  -- JDTLS
  use("mfussenegger/nvim-jdtls")
end)
