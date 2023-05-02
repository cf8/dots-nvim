local plugin = { "folke/which-key.nvim" }

function plugin.config()
  vim.o.timeout = true
  vim.o.timeoutlen = 300
  require("which-key").setup{
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
  }
end

return plugin
