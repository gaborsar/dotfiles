vim.lsp.config("pyright", {
  cmd = {"pyright-langserver", "--stdio"},
  filetypes = {"python"},
  root_markers = {"pyproject.toml", "requirements.txt", ".git"},
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      }
    }
  }
})

vim.lsp.config("ts_ls", {
  cmd = {"typescript-language-server", "--stdio"},
  filetypes = {"javascript", "javascriptreact", "typescript", "typescriptreact"},
  root_markers = {"package.json", "tsconfig.json", ".git"},
})

vim.lsp.enable("pyright")
vim.lsp.enable("ts_ls")

vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition)
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
