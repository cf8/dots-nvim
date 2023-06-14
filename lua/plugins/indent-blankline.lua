local plugin = { "lukas-reineke/indent-blankline.nvim" }

plugin.version = nil
plugin.name = "indent_blankline"

plugin.opts = {
  enabled = true,
  char = "▏",
  show_trailing_blankline_indent = false,
  show_first_indent_level = true,
  use_treesitter = true,
  show_current_context = false,
}

return plugin
