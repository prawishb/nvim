-- Neovim settings
require('settings')

-- Plugins list (packer)
require('plugins-list')

-- Theme
require('theme')

-- Plugins config
require('plugins-config.lsp')
require('plugins-config.treesitter')
require('plugins-config.telescope')
require('plugins-config.lualine')
require('plugins-config.terminal')
require('plugins-config.indent')
require('plugins-config.autopairs')
require('plugins-config.comment')

-- All commands that executes automatically
require('autocommands')

-- All keybinding, except for plugin specific.
-- Example: lsp keybindings are in lsp.lua file
require('keybindings')
