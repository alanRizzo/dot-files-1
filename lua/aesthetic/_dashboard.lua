
-- Grep
vim.g.dashboard_default_executive = 'telescope'

-- Custo Footer
vim.g.dashboard_custom_footer = { 'make America great again' }

-- Custom Header
vim.g.dashboard_custom_header = {
' █████╗ ██╗      █████╗ ███╗   ██╗██╗   ██╗██╗███╗   ███╗',
'██╔══██╗██║     ██╔══██╗████╗  ██║██║   ██║██║████╗ ████║',
'███████║██║     ███████║██╔██╗ ██║██║   ██║██║██╔████╔██║',
'██╔══██║██║     ██╔══██║██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
'██║  ██║███████╗██║  ██║██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
'╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
}

-- Dashboard Sections
vim.g.dashboard_custom_section = {
  a = {
    description = { '🚽  Recently used files ' },
    command = 'Telescope oldfiles',
  },
  b = {
    description = { '🎪  Find file           ' },
    command = 'Telescope find_files',
  },
  c = {
    description = { '👀  Find word           ' },
    command = 'Telescope live_grep',
  },
--  d = {
--    description = { '🐝  Change CoC settings ' },
--    command = ':e ~/.config/nvim/coc-settings.json',
--  },
  e = {
    description = { '🚪  Key mapping         ' },
    command = ':e ~/.config/nvim/lua/general/mappings.lua',
  },
  f = {
    description = { '🚃  Packages            ' },
    command = ':e ~/.config/nvim/lua/packages.lua',
  },
}
