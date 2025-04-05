return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            dashboard = {
                preset = {
                    pick = nil,
                    ---@type snacks.dashboard.Item[]
                    keys = {
                        { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                        { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                        { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                        { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                        { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                        { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                        { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                        { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                    },
                    header = [[
                                                                             
               ████ ██████           █████      ██                     
              ███████████             █████                             
              █████████ ███████████████████ ███   ███████████   
             █████████  ███    █████████████ █████ ██████████████   
            █████████ ██████████ █████████ █████ █████ ████ █████   
          ███████████ ███    ███ █████████ █████ █████ ████ █████  
         ██████  █████████████████████ ████ █████ █████ ████ ██████ 
                    ]],
                },
                sections = {
                    { section = 'header' },
                    {
                        section = "keys",
                        indent = 1,
                        padding = 1,
                    },
                    { section = 'recent_files', icon = ' ', title = 'Recent Files', indent = 3, padding = 2 },
                    { section = "startup" },
                },
            },
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
            -- Buffer
            { "<leader>bd", function() Snacks.bufdelete() end, desc = "Buffer Delete" },
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
