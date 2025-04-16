-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/pesnik/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?.lua;/home/pesnik/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?/init.lua;/home/pesnik/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?.lua;/home/pesnik/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/pesnik/.cache/nvim/packer_hererocks/2.1.1741730670/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["base16-vim"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/base16-vim",
    url = "https://github.com/chriskempson/base16-vim"
  },
  ["beacon.nvim"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/beacon.nvim",
    url = "https://github.com/danilamihailov/beacon.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["cphelper.nvim"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/cphelper.nvim",
    url = "https://github.com/p00f/cphelper.nvim"
  },
  darcula = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/darcula",
    url = "https://github.com/doums/darcula"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  kommentary = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  molokai = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/molokai",
    url = "https://github.com/tomasr/molokai"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/papercolor-theme",
    url = "https://github.com/NLKNguyen/papercolor-theme"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n\v\0\3\3\0\0\0\1K\0\1\0ö\5\1\0\4\0\17\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0024\3\0\0=\3\n\0024\3\0\0=\3\v\0023\3\f\0=\3\r\2B\0\2\0016\0\14\0009\0\15\0'\2\16\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\21before_highlight\0\21highlight_groups\fpalette\vgroups\1\0\25\tnote\tpine\twarn\tgold\thint\tiris\tlink\tiris\tinfo\tfoam\npanel\fsurface\ah6\tfoam\nerror\tlove\ah5\tpine\ah4\tgold\ah3\trose\ah2\tfoam\ah1\tiris\18git_untracked\vsubtle\rgit_text\trose\14git_stage\tiris\15git_rename\tpine\14git_merge\tiris\15git_ignore\nmuted\14git_dirty\trose\15git_delete\tlove\15git_change\trose\fgit_add\tfoam\vborder\nmuted\ttodo\trose\vstyles\1\0\3\tbold\2\17transparency\1\vitalic\1\venable\1\0\3\rterminal\2\15migrations\2\22legacy_highlights\2\1\0\n\17dark_variant\tmain\vstyles\0\21before_highlight\0\venable\0%extend_background_behind_borders\2\25dim_inactive_windows\1\21highlight_groups\0\fpalette\0\fvariant\tauto\vgroups\0\nsetup\14rose-pine\frequire\0" },
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  sonokai = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["spacemacs-theme.vim"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/spacemacs-theme.vim",
    url = "https://github.com/colepeters/spacemacs-theme.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-colors-xcode"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/vim-colors-xcode",
    url = "https://github.com/arzg/vim-colors-xcode"
  },
  ["vim-colorschemes"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/vim-colorschemes",
    url = "https://github.com/flazz/vim-colorschemes"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-one"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/vim-one",
    url = "https://github.com/rakr/vim-one"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  vimspector = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/vimspector",
    url = "https://github.com/puremourning/vimspector"
  },
  vimwiki = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://github.com/vimwiki/vimwiki"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/vscode.nvim",
    url = "https://github.com/Mofiqul/vscode.nvim"
  },
  yaflandia = {
    loaded = true,
    path = "/home/pesnik/.local/share/nvim/site/pack/packer/start/yaflandia",
    url = "https://github.com/JBakamovic/yaflandia"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n\v\0\3\3\0\0\0\1K\0\1\0ö\5\1\0\4\0\17\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0024\3\0\0=\3\n\0024\3\0\0=\3\v\0023\3\f\0=\3\r\2B\0\2\0016\0\14\0009\0\15\0'\2\16\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\21before_highlight\0\21highlight_groups\fpalette\vgroups\1\0\25\tnote\tpine\twarn\tgold\thint\tiris\tlink\tiris\tinfo\tfoam\npanel\fsurface\ah6\tfoam\nerror\tlove\ah5\tpine\ah4\tgold\ah3\trose\ah2\tfoam\ah1\tiris\18git_untracked\vsubtle\rgit_text\trose\14git_stage\tiris\15git_rename\tpine\14git_merge\tiris\15git_ignore\nmuted\14git_dirty\trose\15git_delete\tlove\15git_change\trose\fgit_add\tfoam\vborder\nmuted\ttodo\trose\vstyles\1\0\3\tbold\2\17transparency\1\vitalic\1\venable\1\0\3\rterminal\2\15migrations\2\22legacy_highlights\2\1\0\n\17dark_variant\tmain\vstyles\0\21before_highlight\0\venable\0%extend_background_behind_borders\2\25dim_inactive_windows\1\21highlight_groups\0\fpalette\0\fvariant\tauto\vgroups\0\nsetup\14rose-pine\frequire\0", "config", "rose-pine")
time([[Config for rose-pine]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
