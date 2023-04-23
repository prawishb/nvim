-- vim.g.gruvbox_material_background = 'hard'        -- use hard version of material gruvbox
-- vim.g.gruvbox_material_better_performance = 1     -- for better performance
-- vim.g.gruvbox_material_transparent_background = 1 -- gruvbox material transparent background
-- vim.cmd("colorscheme gruvbox-material")

require('ayu.config').mirage = true
require('ayu').colorscheme()

-- Make all background transparent
vim.cmd [[
  hi Normal guibg=none ctermbg=none
  hi LineNr guibg=none ctermbg=none
  hi Folded guibg=none ctermbg=none
  hi NonText guibg=none ctermbg=none
  hi SpecialKey guibg=none ctermbg=none
  hi VertSplit guibg=none ctermbg=none
  hi SignColumn guibg=none ctermbg=none
  hi EndOfBuffer guibg=none ctermbg=none
]]
