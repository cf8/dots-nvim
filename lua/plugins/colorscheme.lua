local plugins = { "RRethy/nvim-base16" }

local colorscheme = "base16-gruvbox-dark-medium"

function plugins.config()
  pcall(vim.cmd, "colorscheme " .. colorscheme)

  vim.opt.fillchars:append("vert:▕")
  vim.cmd([[hi VertSplit guifg=#32302f guibg=NONE]])
  vim.cmd([[hi NvimTreeWinSeparator guifg=#32302f guibg=NONE]])
end

return plugins
