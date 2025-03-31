vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("t", "<C-q>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.keymap.set("x", "<leader>p", [["_dP]])

-- undoTree
vim.keymap.set("n", "<leader>u", require("undotree").toggle, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>uo", require("undotree").open, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>uc", require("undotree").close, { noremap = true, silent = true })

-- LazyGit
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { noremap = true, silent = true })

-- Oil
vim.keymap.set("n", "<leader>sa", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Telescope
vim.keymap.set("n", "<leader>fa", require("telescope").extensions.flutter.commands, { noremap = true, silent = true })
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

-- Harpoon
local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<leader>e", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set("n", "<leader>1", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>2", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>3", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>4", function()
  harpoon:list():select(4)
end)
vim.keymap.set("n", "<leader>h", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<leader>l", function()
  harpoon:list():next()
end)
