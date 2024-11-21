return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                close_if_last_window = true,
                window = {
                    position = "right",
                    width = 25
                }
            })
            vim.api.nvim_create_autocmd("VimEnter", {
                callback = function()
                    vim.cmd("Neotree show")
                end
            })
            vim.keymap.set("n", '<leader>p', ':Neotree<CR>')
        end
    },
}
