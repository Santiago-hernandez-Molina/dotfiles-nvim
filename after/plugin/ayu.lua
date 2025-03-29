-- Configure the Ayu theme with transparent background
local ayu = require('ayu')

-- Setup ayu colorscheme with custom options
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

  -- Enable transparent background
  transparent_background = true
})

-- Set the colorscheme to ayu
-- vim.cmd('colorscheme ayu')
