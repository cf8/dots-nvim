local plugin = { "j-hui/fidget.nvim" }

function plugin.config()
  require("fidget").setup()
end

return plugin
