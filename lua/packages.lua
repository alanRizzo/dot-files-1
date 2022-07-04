local fn = vim.fn

-- Install Packer if not installed
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.notify('Intalling packer...')
	vim.cmd [[packadd packer.nvim]]
end

-- Protected call for the first time and avoid errors
local status_ok, packer = pcall(require, 'packer')
  if not status_ok then
    return
end

-- Packer with popup window
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

return require('packer').startup(function(use)
  -- Packer Itself
  use( 'wbthomason/packer.nvim' )

  -- CMP plugins
  use( "hrsh7th/nvim-cmp" )-- The completion plugin
  use( "hrsh7th/cmp-buffer" )-- buffer completions
  use( "hrsh7th/cmp-path" )-- path completions
  use( "hrsh7th/cmp-cmdline" )-- cmdline completions
  use( "saadparwaiz1/cmp_luasnip" )-- snippet completions
  use( "hrsh7th/cmp-nvim-lsp" )
  use( "hrsh7th/cmp-nvim-lua" )

  -- Snippets
  use( "L3MON4D3/LuaSnip" )--snippet engine
  use( "rafamadriz/friendly-snippets" )-- a bunch of snippets to use

  -- LSP
  use( "neovim/nvim-lspconfig" )-- enable LSP
  use( "williamboman/nvim-lsp-installer" )-- simple to use language server installer
  use( "jose-elias-alvarez/null-ls.nvim" )-- for formatters and linters

  -- Navigation panel
  use({
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-fzy-native.nvim',
      'BurntSushi/ripgrep',
    },
  })

  -- Which key
  use({ 'folke/which-key.nvim', config = function() require("which-key").setup() end })
  -- Improve the deletion of buffers
  use { 'ojroques/nvim-bufdel' }

  -- Syntax Highlighting
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })

  -- Color highlighter
  use({ 'norcalli/nvim-colorizer.lua', config = function() require("colorizer").setup() end })

  -- UI Plugins
  use( 'glepnir/dashboard-nvim' )
  use( 'nvim-lualine/lualine.nvim' )
  use( 'akinsho/nvim-bufferline.lua' )
  use({ 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' }})

  -- Themes
  use({ 'marko-cerovac/material.nvim', as = 'material' })

  -- Debugger
  use({ 'vim-test/vim-test' })

  -- Markdown preview
  use({ 'ellisonleao/glow.nvim', run = 'GlowInstall', opt = true, ft = 'markdown' })

  -- Git
  use({ "lewis6991/gitsigns.nvim" })


  -- Automatically set up your configuration after cloning packer.nvim
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
