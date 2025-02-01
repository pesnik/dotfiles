local function gruvbox_setup()
  vim.o.background = 'dark'
  vim.cmd 'colorscheme gruvbox'
end

local function gruvbox_material_setup()
  vim.cmd([[
      if has('termguicolors')
        set termguicolors
      endif
  ]])
  vim.o.background = 'dark'
  vim.g.gruvbox_material_background = 'medium'
  vim.g.gruvbox_material_better_performance = 1
  vim.g.gruvbox_material_diagnostic_line_highlight = 1
  vim.g.gruvbox_material_diagnostic_text_highlight = 1
  vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
  -- vim.g.gruvbox_material_cursor = 'yellow'
  -- vim.g.gruvbox_material_enable_italic = 1
  -- vim.g.gruvbox_material_transparent_background = 1
  vim.cmd([[colorscheme gruvbox-material]])
  -- hi! Normal  ctermbg=NONE guibg=NONE
  -- hi! NonText ctermbg=NONE guibg=NONE
  -- hi! EndOFBuffer ctermbg=NONE guibg=NONE
end

local function papercolor_setup()
  vim.o.background = 'dark'
  vim.cmd 'colorscheme PaperColor'
end

local function codedark_setup()
  vim.o.background = 'dark'
  vim.cmd([[colorscheme codedark]])
end

local function solarized_light()
  vim.o.background = 'light'
  vim.cmd 'colorscheme solarized'
end

local function molokai()
  vim.o.background = 'dark'
  vim.cmd 'colorscheme molokai'
  -- vim.g.molokai_original = 1
end

local function base16()
  vim.o.background = 'dark'
  -- vim.o.background = 'dark'
  vim.cmd 'colorscheme base16-default-dark'
  -- vim.g.molokai_original = 1
end

local function oneDark()
  vim.o.background = 'dark'
  vim.cmd 'colorscheme one'
  -- vim.g.molokai_original = 1
end

local function dracula()
  vim.o.background = 'dark'
  vim.cmd 'colorscheme darcula'
  vim.cmd 'set termguicolors'
  vim.cmd "let g:lightline = { 'colorscheme': 'darculaOriginal' }"
  -- vim.g.molokai_original = 1
end

local function xcode()
  vim.o.background = 'dark'
  vim.cmd 'set termguicolors'
  -- vim.cmd 'colorscheme xcodedark'
  vim.cmd 'colorscheme xcodedarkhc'
  -- colorscheme xcodelight
  -- colorscheme xcodelighthc
  -- colorscheme xcodewwdc
end


local function vscode()
  vim.o.background = 'dark'
 -- Lua:
  -- For dark theme
  vim.g.vscode_style = "dark"
  -- For light theme
  -- vim.g.vscode_style = "light"
  -- Enable transparent background
  vim.g.vscode_transparent = 1
  -- Enable italic comment
  vim.g.vscode_italic_comment = 1
  -- Disable nvim-tree background color
  vim.g.vscode_disable_nvimtree_bg = true
  vim.cmd([[colorscheme vscode]])
end

local function sonokai()
  vim.o.background = 'dark'
  -- vim.g.sonokai_style = 'default'
  vim.g.sonokai_style = 'espresso'
  -- vim.g.sonokai_style = 'shusia'
  vim.g.sonokai_better_performance = 1
  vim.cmd([[colorscheme sonokai]])
end

local function yanflandia()
  vim.o.background = 'dark'
  vim.cmd[[colorscheme yaflandia]]
end

local function myFav()
  vim.o.background = 'dark'
  vim.cmd([[colorscheme 0x7A69_dark]])
end

local function spacemacs()
  vim.o.background = 'dark'
  vim.cmd([[colorscheme spacemacs-theme]])
end
-- xcode()
-- gruvbox_material_setup()
papercolor_setup()
-- gruvbox_setup()
-- codedark_setup()
-- solarized_light()
-- molokai()
-- base16()
-- oneDark()
-- dracula();
-- vim.cmd "autocmd BufWinEnter,FileType cpp colorscheme PaperColor"
-- vim.cmd "autocmd BufWinEnter,FileType java colorscheme PaperColor"
-- vscode()
-- sonokai()
-- yanflandia()
-- spacemacs()
-- myFav();
