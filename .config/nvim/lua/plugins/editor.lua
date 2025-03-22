return {
    {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts_extends = { "spec" },
	opts = {
            preset = "helix",
	    defaults = {},
	    spec = {
                {
                    mode = { "n", "v" },
		    { "<leader><tab>", group = "tabs" },
		    { "<leader>c", group = "code" },
		    { "<leader>d", group = "debug" },
		    { "<leader>dp", group = "profiler" },
		    { "<leader>f", group = "file/find" },
		    { "<leader>g", group = "git" },
		    { "<leader>gh", group = "hunks" },
		    { "<leader>q", group = "quit/session" },
		    { "<leader>s", group = "search" },
		    { "<leader>u", group = "ui", icon = { icon = "󰙵 ", color = "green" } },
		    { "[", group = "prev" },
		    { "]", group = "next" },
		    { "g", group = "goto" },
		    { "gs", group = "surround" },
		    { "z", group = "fold" },
	            {
		        "<leader>b",
			group = "buffer",
			expand = function()
			    return require("which-key.extras").expand.buf()
			end,
		    },
		    {
		        "<leader>w",
			group = "windows",
			proxy = "<c-w>",
			expand = function()
			    return require("which-key.extras").expand.win()
			end,
		    },
		    { "gx", desc = "Open with system app" }
		},
	    },
	},
	keys = {
	    {
	        "<leader>?",
		function()
		    require("which-key").show({ global = false })
		end,
		desc = "Buffer Keymaps (which-key)",
	    },
	    {
	        "<c-w><space>",
		function()
		    require("which-key").show({ keys = "<c-w>", loop = true })
		end,
		desc = "Window Hydra Mode (which-key)",
	    },
	},
	config = function(_, opts)
	    local wk = require("which-key")
	    wk.setup(opts)
	    if not vim.tbl_isempty(opts.defaults) then
	        wk.register(opts.defaults)
	    end
	end,
    },
    {
	"folke/todo-comments.nvim",
	event = { "BufReadPost", "BufNewFile", "BufWritePre" },
	opts = {},
	keys = {
	    { "]t", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
	    { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
	    { "<leader>xt", "<cmd>Trouble todo toggle<cr>", desc = "Todo (Trouble)" },
	    { "<leader>xT", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
	    { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
	    { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
	},
    }
}
