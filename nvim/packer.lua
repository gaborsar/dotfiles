vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
	use {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim", build = function() pcall(vim.cmd, "MasonUpdate") end },
			{ "williamboman/mason-lspconfig.nvim" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	}
	use { "akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim" }
end)
