local opt = vim.opt
local api = vim.api
local cmd = vim.cmd
local g = vim.g

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

api.nvim_set_option("clipboard", "unnamedplus")

opt.shiftwidth = 4 -- Tab size
opt.smarttab = true -- Tabs as spaces
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 4 -- Lines of context

cmd.colorscheme("catppuccin")
