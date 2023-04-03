require("nvim-treesitter.configs").setup {
	ensure_installed = { "c", "lua", "vim", "help", "query", "typescript", "javascript", "dart" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}

local lsp = require("lsp-zero")
lsp.preset("recommended")
lsp.setup_servers({ "tsserver", "eslint", "tailwindcss", "lua_ls" })
lsp.nvim_workspace()
lsp.setup()

local cmp = require("cmp");
cmp.setup {
  completion = {
    autocomplete = false,
  },
}

require("flutter-tools").setup {
  closing_tags = {
    enabled = false,
  },
}

vim.opt.laststatus = 2
vim.api.nvim_set_hl(0, "Sl1", { ctermbg = "darkblue", ctermfg = "black" })
vim.api.nvim_set_hl(0, "Sl2", { ctermbg = "black", ctermfg = "darkgray" })
vim.api.nvim_set_hl(0, "Sl3", { ctermbg = "darkblue", ctermfg = "black" })
local sl = ""
sl = sl .. "%#Sl1#"
sl = sl .. " %{%v:lua.string.upper(v:lua.vim.fn.mode())%} "
sl = sl .. "%#Sl2#"
sl = sl .. " %t "
sl = sl .. "%="
sl = sl .. "%#Sl3#"
sl = sl .." %l:%c %P "
vim.opt.statusline = sl

vim.g.mapleader = " "

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

vim.opt.updatetime = 100

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>rn", function()
  vim.lsp.buf.rename()
end)
vim.keymap.set("n", "<leader>nb", function()
  vim.cmd("! npm run build")
end)
vim.keymap.set("n", "<leader>nt", function()
  vim.cmd("! npm run test")
end)
vim.keymap.set("n", "<leader>nj", function()
  vim.cmd("! npm run jest -- %:p")
end)
vim.keymap.set("n", "<leader>df", function()
  vim.cmd("! dart format %")
end)
