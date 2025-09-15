vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("t", "<C-q>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>o", "o<ESC>0", { noremap = true })

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true })
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { noremap = true })

-- undoTree
vim.keymap.set("n", "<leader>u", require("undotree").toggle, { noremap = true, silent = true, desc = "Toggle undoTree" })
vim.keymap.set("n", "<leader>uo", require("undotree").open, { noremap = true, silent = true, desc = "Open UndoTree" })
vim.keymap.set("n", "<leader>uc", require("undotree").close, { noremap = true, silent = true, desc = "Close UndoTree" })


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

-- Move Lines up and down in NORMAL mode
-- Alt+j → mueve la línea actual abajo
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")

-- Alt+k → mueve la línea actual arriba
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")

-- Move blocks in VISUAL mode
-- Alt+j → mueve selección abajo
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")

-- Alt+k → mueve selección arriba
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
