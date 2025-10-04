vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>bp", function ()
  vim.cmd("bp")
end)
vim.keymap.set("n", "<leader>bn", function ()
  vim.cmd("bn")
end)

require("config.lazy")
require("config.lsp")

local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files)
vim.keymap.set("n", "<leader>fg", telescope.live_grep)
vim.keymap.set("n", "<leader>fb", telescope.buffers)
vim.keymap.set("n", "<leader>fh", telescope.help_tags)

local lualine = require("lualine")
lualine.setup()

vim.opt.laststatus = 2
vim.api.nvim_set_hl(0, "Sl1", { bg = "yellow", fg = "black" })
vim.api.nvim_set_hl(0, "Sl2", { bg = "black", fg = "white" })

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth =  2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.path = vim.opt.path + "**"
vim.opt.wildmenu = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
