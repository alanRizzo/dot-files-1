-- remove whitespace on save
vim.cmd [[au BufWritePre * :%s/\s\+$//e]]

--TODO: make this work
-- automatically run :PackerSync whenever packages.lua changes
vim.cmd([[au BufWritePost packages.lua :source <afile> | PackerSync]])
