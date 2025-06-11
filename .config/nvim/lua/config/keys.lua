local wk = require("which-key")

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup('user_lsp_attach', { clear = true }),
    callback = function(event)
        wk.add({
            { "<leader>l", group = "LSP", buffer = event.buf },
            { "<leader>la", vim.lsp.buf.code_action, desc = "Code Action", buffer = event.buf },
            { "<leader>ld", vim.diagnostic.open_float, desc = "Diagnostic Float", buffer = event.buf },
            { "<leader>lr", vim.lsp.buf.rename, desc = "Rename Symbol", buffer = event.buf }
        })
    end
})

wk.add({
    { "<leader>m", group = "meson" },
    { "<leader>mo", "<Cmd>Meson output<CR>", desc = "Meson output" },
    { "<leader>mb", "<Cmd>Meson build<CR>", desc = "Meson Build" },
    { "<leader>mi", "<Cmd>Meson install<CR>", desc = "Meson Install" },
    { "<leader>mr", "<Cmd>Meson run<CR>", desc = "Meson Auto" },
    { "<leader>ml", "<Cmd>Lazy reload meson.nvim<CR>", desc = "Reload plugin" }
})

vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "<F1>", "<nop>")
vim.keymap.set("i", "<F1>", "<nop>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")
