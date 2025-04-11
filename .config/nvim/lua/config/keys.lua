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


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")
