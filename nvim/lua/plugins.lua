local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- file explorer
  use 'kyazdani42/nvim-tree.lua'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use {
    'hrsh7th/nvim-cmp',
    requires = {
        'hrsh7th/cmp-nvim-lsp', -- LSP source
        'hrsh7th/cmp-buffer',   -- Buffer source
        'hrsh7th/cmp-path',     -- Path source
        'hrsh7th/cmp-cmdline',  -- Cmdline source
        'L3MON4D3/LuaSnip',     -- Snippet engine
        'saadparwaiz1/cmp_luasnip', -- Snippet source
    }
  }
  use 'hrsh7th/vim-vsnip'

  -- theme
  use 'NLKNguyen/papercolor-theme'

  use 'rose-pine/neovim'

  use 'morhetz/gruvbox'

  use 'sainnhe/gruvbox-material'

  use 'tomasiser/vim-code-dark'

  use 'tomasr/molokai'

  use 'chriskempson/base16-vim'

  use 'rakr/vim-one'

  use 'doums/darcula'

  use 'arzg/vim-colors-xcode'

  use 'flazz/vim-colorschemes'

  use 'JBakamovic/yaflandia'

  -- use 'karoliskoncevicius/moonshine-vim'

  use 'colepeters/spacemacs-theme.vim'

  use 'Mofiqul/vscode.nvim'

  use 'sainnhe/sonokai'
  -- use 'altercation/vim-colors-solarized'

  -- AIRLINE
  -- use 'vim-airline/vim-airline'
  -- use 'vim-airline/vim-airline-themes'

  -- specific to lualine
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  --
  use 'nvim-treesitter/nvim-treesitter'

  use 'sindrets/diffview.nvim'

  -- telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'

  -- CP
  use 'p00f/cphelper.nvim'
  --

  -- vimwiki
  use 'vimwiki/vimwiki'

  -- debugger
  use 'puremourning/vimspector'
  use 'mfussenegger/nvim-dap'

  -- floatterm
  use 'voldikss/vim-floaterm'

  -- comment
  use 'b3nj5m1n/kommentary'

  use 'lewis6991/gitsigns.nvim'
  -- ******************************* FUN ******************************************
  use 'mhinz/vim-startify'
  use 'danilamihailov/beacon.nvim'
  use 'junegunn/goyo.vim'
  -- ******************************* FUN *******************************************
  if packer_bootstrap then
    require('packer').sync()
  end
end)
