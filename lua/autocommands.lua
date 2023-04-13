-- Author: Prawish Biharie <biharieprawish@gmail.com>
-- Description: Commands that runs automatically, ex. format on save.

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "",
  desc = "Automatically format when saving a file",
  command = ":silent lua vim.lsp.buf.format()"
})

