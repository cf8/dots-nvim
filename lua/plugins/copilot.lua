local plugin = {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
}
  function plugin.config()
    require("copilot").setup({})
  end

return plugin
