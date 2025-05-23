return {
    {
        "meson.nvim",
        dir = "~/Documents/Projects/Lua/meson.nvim",
        dependencies = {
            "nvim-neotest/nvim-nio"
        },
        event = "VeryLazy",
        keys = {
            "<leader>rb",
            "<cmd>Lazy reload meson.nvim<cr>",
            desc = "Reload meson.nvim",
            mode = { "n", "v" }
        }
    },
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")
            dap.adapters.gdb = {
                type = "executable",
                command = "gdb",
                args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
            }
        end
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio"
        }
    },
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                "${3rd}/luassert/library",
                "${3rd}/busted/library",
                "${3rd}/luv/library",
                "meson.nvim",
                "nvim-nio",
                "pathlib.nvim",
                "snacks.nvim"
            }
        }
    }
}
