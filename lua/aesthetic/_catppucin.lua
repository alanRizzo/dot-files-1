-- Theme
local status_ok, _ = pcall(require, 'catppuccin')
  if not status_ok then
    return
end

vim.cmd('colorscheme catppuccin-frappe')
