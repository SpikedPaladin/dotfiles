return {
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "williamboman/mason-lspconfig.nvim"
        },
        opts = function()
            local cmp = require("cmp")
            return {
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered()
                },
                completion = {
                    completeopt = "menu,menuone,noinsert"
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Scape>"] = cmp.mapping.complete(),
                    ["<CR>"] = cmp.mapping.confirm()
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" }
                })
            }
        end,
    }
}
