-- Author: Prawish Biharie <biharieprawish@gmail.com>
-- Descripton: All neovim settings goes in this file

vim.opt.fileencoding = "utf-8"                          -- encoding written to file
vim.encoding = "utf-8"                                  -- encoding

vim.opt.background = "dark"                             -- dark mode colors (if theme has dark/light mode)
vim.opt.syntax = "enable"                               -- enable syntax highlighting
vim.opt.termguicolors = true                            -- 24-bit colors

vim.opt.clipboard = "unnamedplus"                       -- access to system clipboard
vim.opt.completeopt = { "menu", "menuone", "noselect" } -- mostly for cmp
vim.opt.cmdheight = 1                                   -- more space for command line
vim.opt.scrolloff = 8                                   -- minimal number of screen lines to keep above and below the cursor

vim.opt.number = true                                   -- numbered lines
vim.opt.relativenumber = true                           -- relative numbers line
vim.opt.cursorline = true                               -- highlight current cursorline

vim.opt.tabstop = 2                                     -- number of columns occupied by a tab
vim.opt.softtabstop = 2                                 -- see multiple spaces as tabstops so <BS> does the right
vim.opt.shiftwidth = 2                                  -- width for autoindents
vim.opt.expandtab = true                                -- use space for indenting
vim.opt.autoindent = true                               -- indent a new line the same amount as the line just typed
vim.opt.smartindent = true                              -- better indenting

vim.opt.hlsearch = false                                -- disable previous search highlight
vim.opt.timeoutlen = 450                                -- time to wait for a mapped sequence to complete
vim.opt.updatetime = 50

-- allow auto-indenting depending on file type
vim.cmd([[
  filetype plugin indent on
]])
