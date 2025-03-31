return {
  "Shatur/neovim-ayu",
  config = function()
    local ayu = require('ayu')
    ayu.setup({
      mirage = false, -- Set to true for mirage variant, false for light/dark variant
      overrides = {
        Normal = { bg = "None" },

        NormalFloat = { bg = "none" },
        ColorColumn = { bg = "None" },
        SignColumn = { bg = "None" },
        Folded = { bg = "None" },

        FoldColumn = { bg = "None" },
        CursorLine = { bg = "None" },
        CursorColumn = { bg = "None" },
        VertSplit = { bg = "None" },
      },

      transparent_background = true
    })
  end
}
