-- Author: Prawish Biharie <biharieprawish@gmail.com>
-- Description: Commands that runs automatically, ex. format on save.

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "",
  desc = "Automatically format when saving a file",
  command = ":silent lua vim.lsp.buf.format()"
})

-- Show cursorline only on active window
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
  callback = function()
    local ok, cl = pcall(vim.api.nvim_win_get_var, 0, "auto-cursorline")
    if ok and cl then
      vim.wo.cursorline = true
      vim.api.nvim_win_del_var(0, "auto-cursorline")
    end
  end,
})
vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, {
  callback = function()
    local cl = vim.wo.cursorline
    if cl then
      vim.api.nvim_win_set_var(0, "auto-cursorline", cl)
      vim.wo.cursorline = false
    end
  end,
})

-- Disable auto comment when insert new line after comment
vim.api.nvim_create_autocmd("bufEnter", {
  group = vim.api.nvim_create_augroup("FormatOptions", {}),
  pattern = "*",
  callback = function()
    vim.opt.formatoptions:remove { "r", "o" }
  end,
})
