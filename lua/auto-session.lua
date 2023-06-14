local plugin = { "rmagatti/auto-session" }

function plugin.config()
  require("auto-session").setup()
end

return plugin
