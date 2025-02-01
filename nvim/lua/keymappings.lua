local noremapTruesilentTrue = { noremap = true, silent = true }
-- local opts = { noremap=true, silent=true }
local silentTrue = { silent = true }
local noremapTrue = { noremap = true }

-- making SPACE key as the mapleader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', noremapTruesilentTrue)
vim.g.mapleader = ' '


-- no hl (searching a key comes all the matched key highlighted)
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', noremapTruesilentTrue)

-- file explorer
vim.api.nvim_set_keymap('n', '<Leader>x', ':Lexplore<CR>', noremapTruesilentTrue)
-- vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', noremapTruesilentTrue)

-- window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', silentTrue)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', silentTrue)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', silentTrue)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', silentTrue)

-- indentation
vim.api.nvim_set_keymap('v', '<', '<gv', noremapTruesilentTrue)
vim.api.nvim_set_keymap('v', '>', '>gv', noremapTruesilentTrue)

-- ESC
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', noremapTruesilentTrue)

-- TAB switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', noremapTruesilentTrue)

-- Move selected line/block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', noremapTruesilentTrue)
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv\'', noremapTruesilentTrue)

-- Line Numbers
vim.api.nvim_set_keymap('n', '<C-l>', ':set nu<cr> :set rnu<cr>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '<C-l><C-n>', ':set nu!<cr> :set rnu!<cr>', noremapTruesilentTrue)


-- TELESCPOE --

-- Find files using Telescope command-line sugar
-- nnoremap <leader>ff <cmd>Telescope find_files<cr>
-- nnoremap <leader>fg <cmd>Telescope live_grep<cr>
-- nnoremap <leader>fb <cmd>Telescope buffers<cr>
-- nnoremap <leader>fh <cmd>Telescope help_tags<cr>

-- Using Lua functions
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<cr>', noremapTruesilentTrue)
-- nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
-- nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
-- nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

-- LSP -- 
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '<space>H', '<cmd>lua vim.diagnostic.hide()<CR>', noremapTruesilentTrue)

-- Disable arrow keys --
vim.api.nvim_set_keymap('','<Up>', '<Nop>', noremapTrue);
vim.api.nvim_set_keymap('','<Down>', '<Nop>', noremapTrue);
vim.api.nvim_set_keymap('','<Left>', '<Nop>', noremapTrue);
vim.api.nvim_set_keymap('','<Right>', '<Nop>', noremapTrue);

-- New Tab
vim.api.nvim_set_keymap('n', '<leader>t', ':tabnew<CR>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '<C-Left>', ':tabprev<CR>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '<C-Right>', ':tabnext<CR>', noremapTruesilentTrue)

-- vimspector
vim.api.nvim_set_keymap('n', '<Leader>sl', ':call vimspector#Launch()<CR>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '<Leader>sr', ':call vimspector#Reset()<CR>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '<Leader>sc', ':call vimspector#Continue()<CR>', noremapTruesilentTrue)

vim.api.nvim_set_keymap('n', '<Leader>sb', ':call vimspector#ToggleBreakpoint()<CR>', noremapTruesilentTrue)
vim.api.nvim_set_keymap('n', '<Leader>sB', ':call vimspector#ClearBreakpoints()<CR>', noremapTruesilentTrue)

-- nnoremap <Leader>dd :call vimspector#Launch()<CR>
-- nnoremap <Leader>de :call vimspector#Reset()<CR>
-- nnoremap <Leader>dc :call vimspector#Continue()<CR>
-- 
-- nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
-- nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

vim.api.nvim_set_keymap('n', '<Leader>sR', '<Plug>VimspectorRestart', {})
vim.api.nvim_set_keymap('n', '<Leader>so', '<Plug>VimspectorStepOut', {})
vim.api.nvim_set_keymap('n', '<Leader>si', '<Plug>VimspectorStepInto', {})
vim.api.nvim_set_keymap('n', '<Leader>sO', '<Plug>VimspectorStepOver', {})
-- nmap <Leader>dk <Plug>VimspectorRestart
-- nmap <Leader>dh <Plug>VimspectorStepOut
-- nmap <Leader>dl <Plug>VimspectorStepInto
-- nmap <Leader>dj <Plug>VimspectorStepOver


-- FLOAT TERM
-- [[
--   g:floaterm_keymap_new
--   g:floaterm_keymap_prev
--   g:floaterm_keymap_next
--   g:floaterm_keymap_first
--   g:floaterm_keymap_last
--   g:floaterm_keymap_hide
--   g:floaterm_keymap_show
--   g:floaterm_keymap_kill
--   g:floaterm_keymap_toggle
-- ]]
-- Basic terminal operations
vim.g.floaterm_keymap_new = '<Leader>ft'     -- Create new terminal
vim.g.floaterm_keymap_toggle = '<Leader>ftt'  -- Toggle terminal window
vim.g.floaterm_keymap_kill = '<Leader>fk'     -- Kill current terminal
vim.g.floaterm_keymap_prev = '<Leader>fp'     -- Previous terminal
vim.g.floaterm_keymap_next = '<Leader>fn'     -- Next terminal

-- Window management
vim.g.floaterm_keymap_hide = '<Leader>fh'     -- Hide/close terminal window
vim.g.floaterm_keymap_show = '<Leader>fs'     -- Show terminal window

-- Position control
-- vim.g.floaterm_position = 'bottomright'       -- Set default position
vim.g.floaterm_width = 0.8                    -- Set width to 80% of screen
vim.g.floaterm_height = 0.8                   -- Set height to 80% of screen

-- Custom keybindings for specific commands
vim.cmd([[
  " Quick git status
  nnoremap <Leader>fg :FloatermNew --height=0.8 --width=0.8 lazygit<CR>
  
  " Quick file explorer
  nnoremap <Leader>fe :FloatermNew --height=0.8 --width=0.8 ranger<CR>
  
  " Open a new terminal in project root
  nnoremap <Leader>fr :FloatermNew --cwd=<root><CR>
  
  " Toggle terminal in current file's directory
  nnoremap <Leader>fd :FloatermNew --cwd=<file> <CR>
]])


vim.api.nvim_set_keymap('n', '<Leader>G', ':Gitsign toggle_signs<CR>', {})
