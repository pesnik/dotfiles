local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap =
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- file explorer
	use("kyazdani42/nvim-tree.lua")
    use("ggml-org/llama.vim")

	-- lsp
	use("neovim/nvim-lspconfig")
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp", -- LSP source
			"hrsh7th/cmp-buffer", -- Buffer source
			"hrsh7th/cmp-path", -- Path source
			"hrsh7th/cmp-cmdline", -- Cmdline source
			"L3MON4D3/LuaSnip", -- Snippet engine
			"saadparwaiz1/cmp_luasnip", -- Snippet source
		},
	})
	use("hrsh7th/vim-vsnip")

	-- theme
	use("NLKNguyen/papercolor-theme")

	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "auto", -- auto, main, moon, or dawn
				dark_variant = "main", -- main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = true,

				enable = {
					terminal = true,
					legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},

				styles = {
					bold = true,
					italic = false,
					transparency = false,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},

				palette = {
					-- Override the builtin palette per variant
					-- moon = {
					--     base = '#18191a',
					--     overlay = '#363738',
					-- },
				},

				highlight_groups = {
					-- Comment = { fg = "foam" },
					-- VertSplit = { fg = "muted", bg = "muted" },
				},

				before_highlight = function(group, highlight, palette)
					-- Disable all undercurls
					-- if highlight.undercurl then
					--     highlight.undercurl = false
					-- end
					--
					-- Change palette colour
					-- if highlight.fg == palette.pine then
					--     highlight.fg = palette.foam
					-- end
				end,
			})

			-- Set the colorscheme
			vim.cmd("colorscheme rose-pine")
			-- vim.cmd("colorscheme rose-pine-main")
			-- vim.cmd("colorscheme rose-pine-moon")
			-- vim.cmd("colorscheme rose-pine-dawn")
		end,
	})

	use("morhetz/gruvbox")

	use("sainnhe/gruvbox-material")

	use("tomasiser/vim-code-dark")

	use("tomasr/molokai")

	use("chriskempson/base16-vim")

	use("rakr/vim-one")

	use("doums/darcula")

	use("arzg/vim-colors-xcode")

	use("flazz/vim-colorschemes")

	use("JBakamovic/yaflandia")

	-- use 'karoliskoncevicius/moonshine-vim'

	use("colepeters/spacemacs-theme.vim")

	use("Mofiqul/vscode.nvim")

	use("sainnhe/sonokai")
	-- use 'altercation/vim-colors-solarized'

	-- AIRLINE
	-- use 'vim-airline/vim-airline'
	-- use 'vim-airline/vim-airline-themes'

	-- specific to lualine
	use("nvim-lualine/lualine.nvim")
	use("kyazdani42/nvim-web-devicons")
	--
	use("nvim-treesitter/nvim-treesitter")

	use("sindrets/diffview.nvim")

	-- telescope
	use("nvim-telescope/telescope.nvim")
	use("nvim-lua/plenary.nvim")

	-- CP
	use("p00f/cphelper.nvim")
	--

	-- vimwiki
	use("vimwiki/vimwiki")

	-- debugger
	use("puremourning/vimspector")
	use("mfussenegger/nvim-dap")

	-- floatterm
	use("voldikss/vim-floaterm")

	-- comment
	use("b3nj5m1n/kommentary")

	use("lewis6991/gitsigns.nvim")
	-- ******************************* FUN ******************************************
	use("mhinz/vim-startify")
	use("danilamihailov/beacon.nvim")
	use("junegunn/goyo.vim")
	-- ******************************* FUN *******************************************
	if packer_bootstrap then
		require("packer").sync()
	end
end)
