vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
	use 'kyazdani42/nvim-web-devicons'
  use 'nvim-telescope/telescope.nvim'
  use 'phaazon/hop.nvim'
	use 'kyazdani42/nvim-tree.lua'
  use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig'
	use 'mfussenegger/nvim-jdtls'
	use 'vim-test/vim-test'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/nvim-cmp'
	use 'lewis6991/gitsigns.nvim'
  use 'rmehri01/onenord.nvim'
	use 'mvllow/modes.nvim'
	use 'lukas-reineke/indent-blankline.nvim'
	use { 'glepnir/galaxyline.nvim', branch = 'main' }
end)
