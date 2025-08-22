return {
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        keys = {
            { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next Tab" },
            { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev Tab" },

            { "<M-h>", "<Cmd>BufferLineMovePrev<CR>", desc = "Move tab left" },
            { "<M-l>", "<Cmd>BufferLineMoveNext<CR>", desc = "Move tab right" },

            { "<M-1>", "<Cmd>BufferLineGoToBuffer 1<CR>", desc = "Tab #1" },
            { "<M-2>", "<Cmd>BufferLineGoToBuffer 2<CR>", desc = "Tab #2" },
            { "<M-3>", "<Cmd>BufferLineGoToBuffer 3<CR>", desc = "Tab #3" },
            { "<M-4>", "<Cmd>BufferLineGoToBuffer 4<CR>", desc = "Tab #4" },
            { "<M-5>", "<Cmd>BufferLineGoToBuffer 5<CR>", desc = "Tab #5" },
            { "<M-6>", "<Cmd>BufferLineGoToBuffer 6<CR>", desc = "Tab #6" },
            { "<M-7>", "<Cmd>BufferLineGoToBuffer 7<CR>", desc = "Tab #7" },
            { "<M-8>", "<Cmd>BufferLineGoToBuffer 8<CR>", desc = "Tab #8" },
        },
        opts = {
            options = {
                separator_style = "thick"
            }
        }
    }
}
