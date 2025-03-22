return {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile", "BufWritePre", "VeryLazy" },
    lazy = vim.fn.argc(-1) == 0,
    init = function(plugin)
	require("lazy.core.loader").add_to_rtp(plugin)
	require("nvim-treesitter.query_predicates")
    end,
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    keys = {
	{ "<c-space>", desc = "Increment Selection" },
	{ "<bs>", desc = "Decrement Selection", mode = "x" },
    },
    opts_extends = { "ensure_installed" },
    ---@type TSConfig
    opts = {
	highlight = { enabled = true },
	indent = { enable = true },
	ensure_installed = {
	    "bash",
	    "c",
	    "diff",
	    "html",
	    "json",
	    "lua",
	    "luadoc",
	    "luap",
	    "markdown",
	    "markdown_inline",
	    "vim",
	    "xml",
	    "vala",
	    "meson",
	    "css",
	    "scss",
	    "blueprint"
	}
    },
    config = function(_, opts)
	require("nvim-treesitter.configs").setup(opts)
    end
}
