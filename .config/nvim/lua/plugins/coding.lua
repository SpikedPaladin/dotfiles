return {
    {
	"williamboman/mason.nvim",
	opts = {
	    ensure_installed = {
		"lua-language-server"
	    },
	},
    },
    {
	"williamboman/mason-lspconfig.nvim",
    },
    {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
	    "hrsh7th/cmp-nvim-lsp",
	    "hrsh7th/cmp-buffer",
	    "hrsh7th/cmp-path",
	    "L3MON4D3/LuaSnip",
	    "saadparwaiz1/cmp_luasnip",
	},
	opts = function()
	    local cmp = require("cmp")
	    cmp.setup({
		mapping = cmp.mapping.preset.insert({
		    ["<C-Space>"] = cmp.mapping.complete,
		}),
		sources = cmp.config.sources({
		    { name = "nvim_lsp" },
		    { name = "luasnip" },
		    { name = "buffer" },
		    { name = "path" },
		}),
	    })
	end,
    },
   {
	"echasnovski/mini.pairs",
	event = "VeryLazy",
	opts = {
	    modes = { insert = true, command = true, terminal = false },
	    skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
	    skip_ts = { "string" },
	    skip_unbalanced = true,
	    markdown = true,
	},
    }
}
