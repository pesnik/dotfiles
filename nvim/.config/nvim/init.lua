require("plugins")
require("keymappings")
-- require("nv-compe")
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
  endpoint_fim = 'http://127.0.0.1:8484/completion',

  -- Auto-completion settings
  auto_fim = true,        -- Enable automatic suggestions
  show_info = true,       -- Show performance stats

  -- Generation parameters (CPU-optimized)
  max_tokens = 32,        -- Fewer tokens for faster CPU inference
  n_prefix = 128,         -- Context before cursor
  n_suffix = 32,          -- Context after cursor
  timeout_ms = 5000,      -- 5 second timeout

  -- Context management
  max_context = 8192,
  ring_n_chunks = 32,

  -- Keymaps
  keymap_toggle = '<C-f>',
  keymap_fim_accept_full = '<Tab>',
  keymap_fim_accept_line = '<S-Tab>',
}

