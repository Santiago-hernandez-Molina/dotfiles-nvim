vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = false
vim.opt.autoindent = false
vim.opt.cursorline = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 150
vim.opt.spell = true
vim.opt.spelllang = { "es", "en" }
vim.opt.spelloptions = { "camel", "noplainbuffer" } -- Enable camel case spell checking; possible options: "camel", "noplainbuffer", "noplainfile"

vim.g.android_xml_compl_type = "omni"
vim.g.android_sdk_path = os.getenv("HOME") .. "/Android/Sdk"

vim.opt.laststatus = 2 -- Disable the status line (0: never, 1: only if there are at least two windows, 2: always, 3: always and last window has a status line)
