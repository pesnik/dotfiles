require("plugins")
require("keymappings")
require("nv-compe")
require("settings")

require("language-servers.init")
require("language-servers.python-lsp")
require("language-servers.gopls")
require("language-servers.bash-lsp")
require("language-servers.ts-lsp")

require("config.colorscheme")
require("config.tree-sitter")
require("config.vimwiki")
require("config.vimspector")
require("config.lualine")
require("config.diffview")
-- require('config.airline')

require("fun.plugins")

require("config.komentary")
require("config.gitSign")

vim.g.llama_config = {
  -- Server endpoint
  endpoint = 'http://127.0.0.1:8484/completion',
  
  -- Auto-completion settings
  auto_fim = true,              -- Enable automatic suggestions
  show_info = true,             -- Show performance stats
  
  -- Generation parameters (CPU-optimized)
  max_tokens = 32,              -- Fewer tokens for faster CPU inference
  n_prefix = 128,               -- Context before cursor (reduced for CPU)
  n_suffix = 32,                -- Context after cursor (reduced for CPU)
  timeout_ms = 5000,            -- 5 second timeout (CPU needs more time)
  
  -- Context management (CPU-optimized)
  max_context = 8192,           -- Smaller context for CPU
  ring_n_chunks = 32,           -- Fewer chunks for CPU
  
  -- Keymaps
  keymap_toggle = '<C-f>',      -- Toggle suggestions with Ctrl+F
  keymap_accept_full = '<Tab>', -- Accept full suggestion with Tab
  keymap_accept_line = '<S-Tab>', -- Accept first line with Shift+Tab
}

