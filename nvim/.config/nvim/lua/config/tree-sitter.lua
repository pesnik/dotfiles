local status, configs = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

configs.setup {
  -- IMPORTANT: "maintained" is deprecated. 
  -- Use a list of languages you actually use for faster startup.
  ensure_installed = { 
    "lua", 
    "vim", 
    "vimdoc", 
    "query", 
    "javascript", 
    "typescript", 
    "python", 
    "bash" 
  },

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    additional_vim_regex_highlighting = false,
  },
  
  indent = {
    enable = true
  },
}
