-- Configure Go LSP (gopls)
vim.lsp.config("gopls", {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,  -- Enable analysis of unused parameters in functions
      },
      staticcheck = true,    -- Enable static analysis checks
      hints = {
        generate = true,      -- Enable generation of hints
        constant_values = true, -- Show constant values
      },
      semanticTokens = true,  -- Enable semantic tokens for Go syntax highlighting
    },
  },
})

-- Enable Go LSP server
vim.lsp.enable("gopls")

