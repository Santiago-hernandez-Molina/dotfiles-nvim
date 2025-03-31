return {
  {
    "neovim/nvim-lspconfig",
    priority = 70,
    lazy = false,
    dependencies = {

      "styled-components/vim-styled-components",
      "Hoffs/omnisharp-extended-lsp.nvim",
    },

    config = function()
      local servers = require("utils.server_configs")
      local lspconfig = require("lspconfig")


      for server, config in pairs(servers) do
        config.capabilities = vim.lsp.protocol.make_client_capabilities()
        config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end
    end
  },
}
