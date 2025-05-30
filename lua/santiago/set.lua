vim.opt.nu = true
vim.opt.mouse = "a"
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = false
vim.opt.autoindent = false
vim.opt.cursorline = true

vim.opt.wrap = true

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

vim.opt.laststatus = 3 -- Disable the status line (0: never, 1: only if there are at least two windows, 2: always, 3: always and last window has a status line)

vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_enabled = false
vim.g.copilot_node_command = "~/.nvm/versions/node/v20.19.1/bin/node"


-- JAVA_HOME
local java_home = "/home/santiagohm/.sdkman/candidates/java/17.0.15-amzn"
vim.env.JAVA_HOME = java_home
vim.env.PATH = java_home .. "/bin:" .. vim.env.PATH

vim.filetype.add({
  extension = {
    ['http'] = 'http',
  },
})
