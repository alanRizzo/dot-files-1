-- Mapping helper
local map = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true, expr = false })
end

-- Define Mapleader
vim.g.mapleader = "'"

-- Abbreviations
vim.cmd('cnoreabbrev Q q')
vim.cmd('cnoreabbrev W w')
vim.cmd('inoreabbrev ipdb __import__("ipdb").set_trace()')

-- Edit mapping faster
map('n', '<Leader>m', ':vsplit ~/.config/nvim/lua/general/mappings.lua<CR>')

-- Reload file
map('n', '<Leader>s', ':source %<CR>')

-- Identation
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Duplitcate Line
map('n', 'tt', ':t.<CR>')

-- use ESC to turn off search highlighting
map('n', '<Esc>', ':noh<CR>')

-- Resize with arrows
map('n', '<M-j>', ':resize -2<CR>')
map('n', '<M-k>', ':resize +2<CR>')
map('n', '<M-h>', ':vertical resize -2<CR>')
map('n', '<M-l>', ':vertical resize +2<CR>')

-- Switching windows
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
map('n', '<C-h>', '<C-w>h')

-- Plugins Mappings ↓

function Substitute()
  local sentence = vim.fn.getreg('0')
  local result = string.gsub(sentence, " ", "\\ ")
  vim.fn.setreg('0', '"' .. result .. '"')
end

-- Tree
map('n', '<C-n>', ':NvimTreeToggle<CR>')

-- Move between buffers
map('n', '<S-l>', ':BufferLineCycleNext<CR>')
map('n', '<S-h>', ':BufferLineCyclePrev<CR>')
map('n', '<S-d>', ':BufDel<CR>')

-- glow.nvim
map('n', '<Leader>md', ':Glow<CR>')

-- Debugger
map('n', '<space>tn', ':TestNearest<CR>')
map('n', '<space>tf', ':TestFile<CR>')
map('n', '<space>ts', ':TestSuite<CR>')
map('n', '<space>tl', ':TestLast<CR>')
