local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.fd, {})
vim.keymap.set("n", "<leader>fc", function()
  builtin.fd({
    cwd = vim.fn.stdpath("config"),
  })
end, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

require("telescope").setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "build",
      "bin",
      "venv",
      "__pycache__",
    },
  },
  pickers = {
    find_files = {
      path_display = { "smart" }
    }
  },
  extensions = {
    "flutter",
    fzf = {
      fuzzy = true,                   -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,    -- override the file sorter
      case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
    },
    file_browser = {
      use_fd = true
    }
  },
})
local tele = require("telescope")

tele.load_extension("fzf")
tele.load_extension("harpoon")
tele.load_extension("file_browser")
