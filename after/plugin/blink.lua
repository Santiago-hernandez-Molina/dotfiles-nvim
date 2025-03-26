require("luasnip.loaders.from_vscode").lazy_load()

require("blink.cmp").setup({
  sources = {
    default = { "avante", "lsp", "path", "snippets", "buffer" },
    providers = {
      avante = {
        module = 'blink-cmp-avante',
        name = 'Avante',
        opts = {
          -- options for blink-cmp-avante
        }
      }
    },
  },
  signature = { enabled = true },
  snippets = {
    preset = "luasnip",
  },
  fuzzy = { implementation = "lua" },
  completion = {
    menu = {
      draw = {
        columns = {
          { "kind_icon", "kind",              gap = 3 },
          { "label",     "label_description", gap = 3 },
        },
      },
    },
    accept = {
      auto_brackets = {
        enabled = true,
      },
    },
  },
})
