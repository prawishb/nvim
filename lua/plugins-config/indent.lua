-- Author: Prawish Biharie <biharieprawish@gmail.com>
-- Description: Automatic indentation config file

require('guess-indent').setup {
  auto_cmd = true,
  override_editorconfig = false,
}

require('indent_blankline').setup {
  space_char_blankline = '',
  show_current_context = true,
  show_current_context_start = true
}
