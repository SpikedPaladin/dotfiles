return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            dashboard = { enabled = true },
            indent = { enabled = true },
            notifier = { enabled = true },
            explorer = {
                replace_netrw = true
            },
            terminal = { enabled = true }
        },
        keys = {
            { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
            { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
            { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
            { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
            { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
            -- LSP
            { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
            { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
            { "gr", function() Snacks.picker.lsp_references() end, desc = "References" },
            -- Other
            { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
            { "<C-/>", function() Snacks.terminal() end, desc = "Toggle Terminal" },
            { "<C-_>", function() Snacks.terminal() end, desc = "which_key_ignore" }
        }
    }
}
