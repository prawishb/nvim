-- Author: Prawish Biharie <biharieprawish@gmail.com>
-- Description: Toggle comment config file.

-- FIX: keymap only works when sourcing this file (:so)
require("nvim_comment").setup({
  operator_mapping = "<leader>/"
})
