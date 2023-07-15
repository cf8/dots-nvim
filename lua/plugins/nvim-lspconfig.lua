local plugin = { "neovim/nvim-lspconfig" }

function plugin.config()
  require("plugins.lsp.handlers").setup()

end

return plugin
