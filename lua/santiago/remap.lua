vim.g.mapleader = " "
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<leader>u", require("undotree").toggle, { noremap = true, silent = true })

-- or
vim.keymap.set("n", "<leader>uo", require("undotree").open, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>uc", require("undotree").close, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fa", require("telescope").extensions.flutter.commands, { noremap = true, silent = true })
vim.keymap.set("x", "<leader>p", [["_dP]])
