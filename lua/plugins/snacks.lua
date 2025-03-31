return {
  "folke/snacks.nvim",
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = false },
    explorer = { enabled = true },
    indent = {
      enabled = true,
      indent = {
        only_scope = false, -- only show indent guides of the scope
        only_current = false, -- only show indent guides in the current window
        char = "│",
      },
      scope = { char = "│", },
      animate = {
        enabled = false,
        easing = "linear",
        duration = {
          step = 20,
          total = 80,
        },
      },
    },
    input = { enabled = true },
    picker = {
      enabled = true,
      ui_select = true,
    },
    lazygit = { enabled = true, configure = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    statuscolumn = { enabled = true },
    win = { enabled = true },
    words = { enabled = false },
    scroll = { enabled = false },
  }
}
