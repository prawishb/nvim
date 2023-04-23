require("toggleterm").setup {
  open_mapping = "<leader>\\",
  direction = "float",
  float_opts = {
    border = "curved"
  }
}

-- Lazygit setup
local Terminal = require('toggleterm.terminal').Terminal
local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true })

function LazygitToggle()
  lazygit:toggle()
end
