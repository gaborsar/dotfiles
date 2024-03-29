vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "c", "lua", "vim", "query",
    "typescript", "javascript",
    "dart", "python",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files)
vim.keymap.set("n", "<leader>fg", telescope.live_grep)
vim.keymap.set("n", "<leader>fb", telescope.buffers)
vim.keymap.set("n", "<leader>fh", telescope.help_tags)

local lsp = require("lsp-zero")
lsp.preset("recommended")
lsp.setup_servers({
  "tsserver", "tailwindcss", "lua_ls",
  "jsonls", "yamlls", "pyright",
})
lsp.nvim_workspace()
lsp.setup()
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

require("flutter-tools").setup {
  closing_tags = {
    enabled = false,
  },
}

require("rose-pine").setup({
  disabled_background = true,
})
vim.cmd.colorscheme("rose-pine")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.opt.laststatus = 2
vim.api.nvim_set_hl(0, "Sl1", { bg = "#005588", fg = "black" })
vim.api.nvim_set_hl(0, "Sl2", { bg = "#1f1d2e", fg = "#005588" })

local sl = ""
sl = sl .. "%#Sl1#"
sl = sl .. " %{%v:lua.string.upper(v:lua.vim.fn.mode())%} "
sl = sl .. "%#Sl2#"
sl = sl .. " %t %m "
sl = sl .. "%="
sl = sl .. "%#Sl1#"
sl = sl .." %l:%c %P "
vim.opt.statusline = sl

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "no"

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

vim.keymap.set("n", "<leader>bp", function ()
  vim.cmd("bp")
end)

vim.keymap.set("n", "<leader>bn", function ()
  vim.cmd("bn")
end)
