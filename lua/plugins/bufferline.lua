local plugin = { "akinsho/bufferline.nvim" }

plugin.dependencies = {
  "nvim-tree/nvim-web-devicons",
}

function plugin.config()
  require("bufferline").setup({
    options = {
      close_command = "Bdelete! %d",
      right_mouse_command = "Bdelete! %d",
      offsets = {
        {
          filetype = "NvimTree",
          text = "",
          padding = 1,
          separator = false,
          text = "Files",
        },
      },
      -- separator_style = "thin",
      show_close_icon = false,
      hover = { enabled = true, reveal = { "close" } },
    },
  })
end

return plugin
