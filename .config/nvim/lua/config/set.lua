vim.cmd.colorscheme("catppuccin")

vim.o.nu = true
vim.o.relativenumber = true

-- Turn off the stupidest thing in the entire universe
vim.g.meson_recommended_style = 0
vim.highlight.priorities.semantic_tokens = 75

-- Tabs to 4 spaces
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = false

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.scrolloff = 4

vim.o.wrap = false
vim.g.editorconfig = false

vim.g.neovide_normal_opacity = 0
vim.g.neovide_hide_mouse_when_typing = true
