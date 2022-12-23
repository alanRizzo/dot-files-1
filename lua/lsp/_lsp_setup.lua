local status_ok, lsp_setup = pcall(require, "lsp-setup")
if not status_ok then
  return
end

lsp_setup.setup({
  -- default_mappings = true,
  -- Custom mappings, will overwrite the default mappings for the same key
  -- Example mappings for telescope pickers:
  gd = 'lua require"telescope.builtin".lsp_definitions()',
  gi = 'lua require"telescope.builtin".lsp_implementations()',
  gr = 'lua require"telescope.builtin".lsp_references()',
  servers = {
    pylsp = require("lsp.settings._pylsp"),
    --pyright = require("lsp.settings._pyright"),
    sumneko_lua = require("lsp.settings._sumneko_lua")
  }
})
