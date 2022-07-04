local null_ls_status_ok, null_ls = pcall(require, 'null-ls')
if not null_ls_status_ok then
  return
end

local black_path = vim.env.HOME .. '/.pyenv/versions/neovim/bin/black'
local isort_path = vim.env.HOME .. '/.pyenv/versions/neovim/bin/isort'
local line_length = '88'

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup {
  debug = false,
  sources = {
    formatting.isort.with(
      { command = isort_path,
        extra_args = { '--multi-line', 3, '--trailing-comma', '--line-length', line_length }
    }),
    formatting.black.with(
      { command = black_path,
        extra_args = { '--line-length', line_length, '--fast' }
    }),
    diagnostics.flake8.with(
      { extra_args = {'--max--line-length', line_length} }
    )
  },
}
