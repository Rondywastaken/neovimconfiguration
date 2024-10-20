-- initializing lazy.
require("config.lazy")

-- General vim configurations
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")

-- Keymappings

-- Copy and paste keymaps
vim.keymap.set("n", "<C-v>", '"+p:%s/\\r//g<CR>', { noremap = true, silent = true })
vim.keymap.set({'n'}, '<C-c>', '"+y$')
vim.keymap.set({'v'}, '<C-c>', '"+y')

