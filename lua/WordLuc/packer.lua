
--vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--  vim.lsp.diagnostic.on_publish_diagnostics, {
--    -- delay update diagnostics
--    update_in_insert = true,
--  }
--)-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'L3MON4D3/LuaSnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'hrsh7th/cmp-cmdline' },
			{ 'hrsh7th/cmp-nvim-lsp-signature-help' },
			{ "saadparwaiz1/cmp_luasnip" },}
	}

	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	use {
		"navarasu/onedark.nvim"
	}
	use 'Exafunction/codeium.vim'
end)
