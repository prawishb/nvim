-- Author: Prawish Biharie <biharieprawish@gmail.com>
-- Description: Toggle terminal config file

-- FIX: keymap only works when sourcing this file (:so)
require("toggleterm").setup {
  open_mapping = "<leader>`",
  direction = "float",
  float_opts = {
    border = "curved"
  }
}
