-- Author: Prawish Biharie <biharieprawish@gmail.com>
-- Description: LSP and CMP config file

local lsp = require("lsp-zero").preset("recommended")
local cmp = require("cmp")

local cmp_select = { behavior = cmp.SelectBehavior.Select }
cmp.setup({
  mapping = lsp.defaults.cmp_mappings({
    ["<C-Space>"] = cmp.mapping.complete(),
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm(),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "path" },
    {
      name = "buffer",
      keyword_length = 5,
      option = {
        -- Avoid accidentally running on big files
        get_bufnrs = function()
          local buf = vim.api.nvim_get_current_buf()
          local byte_size = vim.api.nvim_buf_get_offset(buf, vim.api.nvim_buf_line_count(buf))
          if byte_size > 1024 * 1024 then -- 1 Megabyte max
            return {}
          end
          return { buf }
        end
      }
    }
  }
})

lsp.ensure_installed({
  "lua_ls",
})

-- Fix global vim warning
lsp.configure("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
})

-- Dart
lsp.setup_servers({
  'dartls', force = true
})

lsp.set_preferences({
  suggest_lsp_servers = false
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts, { desc = "[G]o to [D]efinition" })
  vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts, { desc = "[G]o to [R]eferences" })
  vim.keymap.set("n", "D", function() vim.lsp.buf.hover() end, opts, { desc = "Open floating [D]iagnostics" })
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts, { desc = "[C]ode [A]ctions" })
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts, { desc = "[R]ename" })
end)

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
  signs = false
})
