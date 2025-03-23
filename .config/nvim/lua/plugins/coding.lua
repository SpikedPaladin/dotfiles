return {
    {
	"neovim/nvim-lspconfig",
	config = function()
	    vim.diagnostic.config({
		signs = {
		    text = {
			[vim.diagnostic.severity.WARN] = '',
			[vim.diagnostic.severity.ERROR] = ""
		    }
		}
	    })
	    require("lspconfig").lua_ls.setup({})
	    require("lspconfig").vala_ls.setup({})
	end,
    },
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
	dependencies = {
	    "williamboman/mason.nvim"
	}
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
	    "williamboman/mason-lspconfig.nvim",
	},
	opts = function()
	    local cmp = require("cmp")
	    return {
		window = {
		    completion = cmp.config.window.bordered(),
		    documentation = cmp.config.window.bordered()
		},
		completion = {
		    completeopt = "menu,menuone,noinsert",
		},
		mapping = cmp.mapping.preset.insert({
		    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
		    ["<C-f>"] = cmp.mapping.scroll_docs(4),
		    ["<C-Space>"] = cmp.mapping.complete(),
		    ["<CR>"] = cmp.mapping.confirm()
		}),
		sources = cmp.config.sources({
		    { name = "nvim_lsp" },
		    { name = "luasnip" },
		    { name = "buffer" },
		    { name = "path" },
		}),
	    }
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
