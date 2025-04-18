return {
    {
        'PhilT/vim-fsharp'
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "fsautocomplete",
                    "clangd",
                    "pylsp",
                    "html",
                    "ts_ls",
                    "cssls",
                    "csharp_ls",
                },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require('lspconfig')

            lspconfig.pylsp.setup({
                capabilities = capabilities
            })

            lspconfig.lua_ls.setup({
                capabilities = capabilities

            })

            lspconfig.clangd.setup({
                capabilities = capabilities
            })

            lspconfig.html.setup({
                capabilities = capabilities
            })

            lspconfig.ts_ls.setup({
                capabilities = capabilities
            })

            lspconfig.cssls.setup({
                capabilities = capabilities
            })

            lspconfig.csharp_ls.setup({
                capabilities = capabilities
            })

            -- Keymaps for lsps
            vim.keymap.set('n','K', vim.lsp.buf.hover)
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action)
        end
    },
}
