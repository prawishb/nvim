require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "dart" },
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  }
}
