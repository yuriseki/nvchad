-- Neovide stuff
if vim.g.neovide then
  vim.keymap.set('n', '<C-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<C-c>', '"+y') -- Copy
  vim.keymap.set('n', '<C-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<C-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<C-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
-- vim.api.nvim_set_keymap('', '<C-v>', '+p<CR>', { noremap = true, silent = true})
-- vim.api.nvim_set_keymap('!', '<C-v>', '<C-R>+', { noremap = true, silent = true})
-- vim.api.nvim_set_keymap('t', '<C-v>', '<C-R>+', { noremap = true, silent = true})
-- vim.api.nvim_set_keymap('v', '<C-v>', '<C-R>+', { noremap = true, silent = true})
--

-- Base initi config
vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },


  -- {import = "plugins-drupal"},
  { import = "plugins" },
  { import = "custom.plugins" },

}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "autocmds"
require "custom.keymap"
require "custom.options"
-- require "custom.lsp"


vim.schedule(function()
  require "mappings"
end)
