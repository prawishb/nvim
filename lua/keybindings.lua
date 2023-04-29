local default_opts = {
  noremap = true,
  silent = true,
}

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d", default_opts, { desc = "[D]elete without copying" })
vim.keymap.set('n', '<C-s>', ':w<CR>', default_opts, { desc = '[S]ave' })

-- Netrw file browser
--vim.keymap.set("n", "<leader>b", ":Ex<CR>", default_opts, { desc = "Open file [B]rowser" })
vim.keymap.set("n", "<leader>b", ":call ToggleNetrw()<CR>", default_opts, { desc = "Open file [B]rowser" })
vim.keymap.set("n", "<leader>bc", ":Rex<CR>", default_opts, { desc = "[C]lose file [B]rowser" })

-- Remove highlight when pressing enter
vim.keymap.set("n", "<CR>", ":noh<CR><CR>", default_opts)

-- Vertical movement (auto-centering)
vim.keymap.set("n", "<C-d>", "<C-d>zz", default_opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", default_opts)

-- Split screen
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l", default_opts, { desc = "[V]ertical split" })
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", default_opts, { desc = "Move to left window" })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", default_opts, { desc = "Move to right window" })
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>", default_opts, { desc = "Move to bottom window" })
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>", default_opts, { desc = "Move to upper window" })

-- Document
vim.keymap.set("n", "<leader>df", ":lua vim.lsp.buf.format()<CR>", default_opts, { desc = "[D]ocument [F]ormat" })

-- Telescope
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

-- Git
vim.keymap.set('n', '<leader>g', ':lua LazygitToggle()<CR>', default_opts, { desc = "Toggle [G]it window" })
