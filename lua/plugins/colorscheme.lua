return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        name = "kanagawa",
        priority = 1000,
        theme = "lotus",
        config = function()
            vim.cmd("colorscheme kanagawa")
        end,
    },
}
