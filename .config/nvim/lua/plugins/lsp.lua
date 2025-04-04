return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim"
        },
        config = function()
            vim.diagnostic.config({
                signs = {
                    text = {
                        [vim.diagnostic.severity.WARN] = "",
                        [vim.diagnostic.severity.ERROR] = ""
                    }
                }
            })

            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            lspconfig.blueprint_ls.setup({})

            require("mason").setup()
            require("mason-lspconfig").setup {
                ensure_installed = {
                    "lua_ls"
                },
                handlers = {
                    function(server_name)
                        lspconfig[server_name].setup({ capabilities = capabilities })
                    end
                }
            }
        end,
    }
}
