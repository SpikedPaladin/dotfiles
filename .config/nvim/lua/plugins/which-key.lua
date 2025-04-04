return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            preset = "helix",
            spec = {
                {
                    mode = { "n", "v" },
                    { "<leader>g", group = "git" }
                }
            }
        },
        keys = {
            {
                "<leader>?",
                function ()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Keymaps (which-key)"
            }
        }
    }
}
