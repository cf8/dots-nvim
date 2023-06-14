local plugin = { "williamboman/mason.nvim" }

plugin.dependencies = {
  "williamboman/mason-lspconfig.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  "jay-babu/mason-null-ls.nvim",
  "nvim-lua/plenary.nvim",
}

local servers = {
  "cssls",
  "html",
  "tsserver",
  "bashls",
  "jsonls",
}

local settings = {
  ui = {
    border = "none",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}

function plugin.config()
  require("mason").setup(settings)
  require("mason-lspconfig").setup({
    ensure_installed = servers,
    automatic_installation = true,
  })

  require("mason-lspconfig").setup_handlers({
    function(server_name)
    opts = {
      on_attach = require("plugins.lsp.handlers").on_attach,
      capabilities = require("plugins.lsp.handlers").capabilities,
    }

      require("lspconfig")[server_name].setup(opts)
    end,
  })

end

return plugin
