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
    hi Normal guibg=NONE ctermbg=NONE
    hi NormalNC guibg=NONE ctermbg=NONE
    hi SignColumn guibg=NONE ctermbg=NONE
    hi StatusLine guibg=NONE ctermbg=NONE
    hi StatusLineNC guibg=NONE ctermbg=NONE
    hi VertSplit guibg=NONE ctermbg=NONE
    hi TabLine guibg=NONE ctermbg=NONE
    hi TabLineFill guibg=NONE ctermbg=NONE
    hi TabLineSel guibg=NONE ctermbg=NONE
    hi Pmenu guibg=NONE ctermbg=NONE
    hi PmenuSel guibg=NONE ctermbg=NONE
    hi NeoTreeNormal guibg=NONE ctermbg=NONE
    hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
    hi NeoTreeWinSeparator guibg=NONE ctermbg=NONE
]]


-- Keymappings

-- Copy, paste and clip keymaps
vim.keymap.set("n", "<C-v>", '"+p:%s/\\r//g<CR>', { noremap = true, silent = true })
vim.keymap.set({'n'}, '<C-c>', '"+y$')
vim.keymap.set({'v'}, '<C-c>', '"+y')
vim.keymap.set({'n'}, '<C-x>', '"+d$')
vim.keymap.set({'v'}, '<C-x>', '"+d')

