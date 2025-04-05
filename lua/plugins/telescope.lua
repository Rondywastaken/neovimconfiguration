return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')
            local actions = require('telescope.actions')
            local action_state = require('telescope.actions.state')

            -- Custom function to open the selected file in a new Tmux window
            local function open_in_tmux(prompt_bufnr)
                local entry = action_state.get_selected_entry()
                local file_path = entry.value
                local command = string.format("tmux new-window 'nvim \"%s\"'", file_path)
                vim.fn.system(command)
                actions.close(prompt_bufnr)  -- Close the Telescope prompt
            end

            -- Setup Telescope with custom mappings
            require('telescope').setup({
                defaults = {
                    mappings = {
                        i = {
                            ['<leader>s'] = open_in_tmux,  -- Use Ctrl-t to open in Tmux
                        },
                    },
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    }
                }
            })

            -- Load the ui-select extension
            require("telescope").load_extension("ui-select")

            -- Keybindings for Telescope
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
}
