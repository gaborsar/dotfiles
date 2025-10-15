vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")
require("config.lsp")

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.api.nvim_create_user_command("W", "write", { nargs = "*", complete = "file", bang = true })
vim.api.nvim_create_user_command("Q", "quit", { nargs = "?", bang = true })

local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files)
vim.keymap.set("n", "<leader>fg", telescope.live_grep)
vim.keymap.set("n", "<leader>fb", telescope.buffers)
vim.keymap.set("n", "<leader>fh", telescope.help_tags)

local lualine = require("lualine")
lualine.setup()

vim.opt.clipboard = "unnamedplus"
vim.opt.smartindent = true
vim.opt.laststatus = 2
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.path = vim.opt.path + "**"
vim.opt.wildmenu = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = {"javascript", "javascriptreact", "typescript", "typescriptreact", "lua"},
  callback = function()
    vim.bo.expandtab = true
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
    vim.bo.shiftwidth = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {"python"},
  callback = function()
    vim.bo.expandtab = true
    vim.bo.tabstop = 4
    vim.bo.softtabstop = 4
    vim.bo.shiftwidth = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {"c", "cpp"},
  callback = function()
    vim.bo.expandtab = false
    vim.bo.tabstop = 4
    vim.bo.softtabstop = 4
    vim.bo.shiftwidth = 4
  end,
})
