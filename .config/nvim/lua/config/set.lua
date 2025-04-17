vim.cmd.colorscheme("catppuccin")

vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true

-- Turn off the stupidest thing in the entire universe
vim.g.meson_recommended_style = 0

-- Tabs to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 4

vim.opt.wrap = false
vim.g.editorconfig = false

vim.g.neovide_normal_opacity = 0
vim.g.neovide_hide_mouse_when_typing = true
