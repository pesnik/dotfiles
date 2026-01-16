-- Configure Python LSP (pyright)
vim.lsp.config("pyright", {
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,             -- Automatically search paths
        useLibraryCodeForTypes = true,      -- Use library code for type checking
        diagnosticMode = "workspace",       -- Diagnostic mode (can be "workspace" or "openFilesOnly")
      },
    },
  },
})

-- Enable Python LSP server
vim.lsp.enable("pyright")

