local opt = vim.opt

vim.encoding = "utf-8"                              -- encoding
opt.fileencoding = "utf-8"                          -- encoding written to file

opt.background = "dark"                             -- dark mode colors (if theme has dark/light mode)
opt.syntax = "enable"                               -- enable syntax highlighting
opt.termguicolors = true                            -- 24-bit colors

opt.clipboard = "unnamedplus"                       -- access to system clipboard
opt.completeopt = { "menu", "menuone", "noselect" } -- mostly for cmp
opt.cmdheight = 1                                   -- more space for command line
opt.scrolloff = 8                                   -- minimal number of screen lines to keep above and below the cursor
opt.wrap = false                                    -- disable line wrap
opt.hidden = true                                   -- for toggle terminal to not close

opt.number = true                                   -- numbered lines
opt.relativenumber = true                           -- relative numbers line
opt.cursorline = true                               -- highlight current cursorline

opt.tabstop = 2                                     -- number of columns occupied by a tab
opt.softtabstop = 2                                 -- see multiple spaces as tabstops so <BS> does the right
opt.shiftwidth = 2                                  -- width for autoindents
opt.expandtab = true                                -- use space for indenting
opt.autoindent = true                               -- indent a new line the same amount as the line just typed
opt.smartindent = true                              -- better indenting

opt.hlsearch = false                                -- disable previous search highlight
opt.timeoutlen = 450                                -- time to wait for a mapped sequence to complete
opt.updatetime = 50

-- allow auto-indenting depending on file type
vim.cmd([[
  filetype plugin indent on
]])

-- For indentation guides
opt.list = true
opt.listchars:append "space:⋅"
