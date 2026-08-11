-- Neogit configuration

require("neogit").setup({
  -- Display options
  disable_insert_on_commit = false,
  file_components = {
    picker = {
      runner = "telescope",  -- uses telescope for file selection
    },
  },

  -- Telescope integration
  picker_style = {
    root_style = "default",
  },

  -- Sign column style (0 = no sign column)
  signcolumn = {
    enable = true,
  },

  -- Integrations (set to false to disable)
  integrations = {
    -- If neogit_integration_enable is true, then only these will have diffviews
    -- If neogit_integration_enable is false, then all other diffviews will not be created
    diffview = false,  -- disabled since we're removing diffview.nvim
    iris = false,
  },

  -- Git log style
  gitlog = {
    enabled = true,
  },

  -- Conflict markers
  conflict_markers_enabled = true,

  -- Auto-attach to git repos
  auto_attach = true,

  -- Commit message template
  commit_message_template = "",
})