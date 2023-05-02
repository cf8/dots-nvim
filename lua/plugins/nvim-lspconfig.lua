local plugin = { "neovim/nvim-lspconfig" }

function plugin.config()
  -- require("lspconfig").stylelint_lsp.setup({})
  require("plugins.lsp.handlers").setup()
end

return plugin
