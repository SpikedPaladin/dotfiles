return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            transparent_background = true,
            float = {
                transparent = true
            },
            custom_highlights = function(color)
                return {
                    ["@property"] = { fg = color.blue }
                }
            end
        }
    }
}
