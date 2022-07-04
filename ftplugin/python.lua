vim.cmd([[
augroup LspFormatting
    autocmd!
    autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync()
augroup END
]])

-- Indent with Spaces
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
