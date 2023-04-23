-- FIX: keymap only works when sourcing this file (:so)
require("toggleterm").setup {
  open_mapping = "<leader>\\",
  direction = "float",
  float_opts = {
    border = "curved"
  }
}
