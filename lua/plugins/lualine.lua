local plugin = { "nvim-lualine/lualine.nvim" }

plugin.dependencies = {
  "nvim-tree/nvim-web-devicons",
}

function plugin.config()
  local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn" },
    symbols = { error = " ", warn = " " },
    colored = false,
    always_visible = true,
  }

  local diff = {
    "diff",
    colored = false,
    symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
    cond = hide_in_width,
  }

  local filetype = {
    "filetype",
    icons_enabled = true,
  }

  local location = {
    "location",
    padding = 0,
  }

  require("lualine").setup({
    options = {
      theme = "gruvbox-material",
      globalstatus = true,
      icons_enabled = true,
      component_separators = { left = " ", right = " " },
      section_separators = { left = " ", right = " " },
      always_divide_middle = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { diagnostics },
      lualine_x = { diff, filetype },
      lualine_y = { location },
      lualine_z = { "progress" },
    },
  })
end

return plugin
