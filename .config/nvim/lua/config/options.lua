local opt = vim.opt
local api = vim.api

api.nvim_set_option("clipboard", "unnamedplus")

opt.shiftwidth = 4 -- Tab size
opt.smarttab = true -- Tabs as spaces
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 4 -- Lines of context
