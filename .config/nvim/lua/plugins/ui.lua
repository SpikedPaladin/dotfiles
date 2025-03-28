return {
   {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
	    { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
	    { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
	},
	opts = {
	    options = {
		separator_style = "slant",
		offsets = {
		    {
			filetype = "NvimTree",
			text = "File Explorer",
			highlight = "Directory",
			separator = true
		    }
		}
	    }
	}
    },
    {
        "nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
            options = {
                theme = "auto"
	    },
	    extensions = { "nvim-tree" }
	}
    },
    {
        "folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
            "MunifTanjim/nui.nvim",
	    "rcarriga/nvim-notify"
	},
	opts = {
            presets = {
                command_palette = true,
	    }
	}
    },
    {
        "nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
	    local builtin = require('telescope.builtin')
	    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
	    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	end
    }
}
