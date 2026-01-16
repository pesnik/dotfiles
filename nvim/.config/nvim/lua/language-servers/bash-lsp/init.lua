-- Configure Bash LSP (bashls)
vim.lsp.config("bashls", {
  settings = {
    bashIde = {
      global = {
        shellcheck = true,  -- Enable shellcheck (static analysis)
        shellFormat = true, -- Enable shell formatting
      },
    },
  },
})

-- Enable Bash LSP server
vim.lsp.enable("bashls")

