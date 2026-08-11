-- nvim-dap configuration

local dap = require("dap")
local dapui = require("dapui")

require("nvim-dap-virtual-text").setup({
  enabled = true,
  enabled_commands = true,
  highlight_changed_variables = true,
  highlight_as_read_only = true,
})

dapui.setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle_view = "H",
  },
  layouts = {
    {
      elements = {
        { id = "scopes", size = 0.33 },
        { id = "breakpoints", size = 0.17 },
        { id = "stacks", size = 0.25 },
        { id = "watches", size = 0.25 },
      },
      position = "right",
      size = 40,
    },
    {
      elements = {
        { id = "repl", size = 0.45 },
        { id = "console", size = 0.55 },
      },
      position = "bottom",
      size = 10,
    },
  },
})

-- DAP defaults
dap.defaults.fallback.terminal_win_cmd = "new"

-- Go debug adapter (requires dlv-dap installed: go install github.com/go-delve/delve/cmd/dlv@latest)
dap.adapters.go = {
  type = "executable",
  command = "dlv-dap",
  args = { "--listen=127.0.0.1:0" },
}

dap.configurations.go = {
  {
    type = "dlv-dap",
    name = "Debug (go)",
    request = "launch",
    program = "${workspaceFolder}/${relativeFileDirname}",
  },
}