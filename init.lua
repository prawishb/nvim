-- Author: Prawish Biharie <biharieprawish@gmail.com>
-- Description: Simple neovim config.

-- Neovim settings
require('settings')

-- Plugins list (packer)
require('plugins-list')

-- Theme
require('theme')

-- Plugins config
require('plugins-config.lsp')
require('plugins-config.treesitter')
require('plugins-config.lualine')
require('plugins-config.terminal')
require('plugins-config.indent')
require('plugins-config.autopairs')
require('plugins-config.comment')
