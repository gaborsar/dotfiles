vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use {
    "rose-pine/neovim",
    as = "rose-pine",
  }
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    requires = "nvim-lua/plenary.nvim",
  }
  use {
    "akinsho/flutter-tools.nvim",
    requires = "nvim-lua/plenary.nvim",
  }
  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
    },
  }
end)

