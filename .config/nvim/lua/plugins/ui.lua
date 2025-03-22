return {
    {
        "nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
            options = {
                theme = "auto"
	    }
	}
    },
    {
        "folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
            "MunifTanjim/nui.nvim"
	},
	opts = {
            presets = {
                command_palette = true,
	    }
	}
    },
    {
        "nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" }
    }
}
