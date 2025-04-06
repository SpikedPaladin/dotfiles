local which_key = require("which-key")

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup('user_lsp_attach', { clear = true }),
    callback = function(event)
        local opts = { buffer = event.buf }

        local mappings = {
            ["<leader>"] = {
                l = {
                    name = "LSP",
                    a = { vim.lsp.buf.code_action, "Code Action" },
                    r = { vim.lsp.buf.rename, "Rename Symbol" },
                    d = { vim.diagnostic.open_float, "Diagnostic Float" }
                }
            }
        }

        which_key.register(mappings, opts)
    end
})


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")
