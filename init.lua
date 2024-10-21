-- initializing lazy.
require("config.lazy")

-- General vim configurations
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")

-- Set nvim to be transparent
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

-- Keymappings

-- Copy, paste and clip keymaps
vim.keymap.set("n", "<C-v>", '"+p:%s/\\r//g<CR>', { noremap = true, silent = true })
vim.keymap.set({'n'}, '<C-c>', '"+y$')
vim.keymap.set({'v'}, '<C-c>', '"+y')
vim.keymap.set({'n'}, '<C-x>', '"+d$')
vim.keymap.set({'v'}, '<C-x>', '"+d')

