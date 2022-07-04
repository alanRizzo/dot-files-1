-- Theme
local status_ok, _ = pcall(require, 'material')
  if not status_ok then
    return
end

vim.cmd('colorscheme material')

vim.g.material_style = 'deep ocean'
vim.g.tokyonight_style = 'storm'
vim.g.tokyonight_italic_variables = 'true'
