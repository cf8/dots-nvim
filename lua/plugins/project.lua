local plugin = { "ahmedkhalf/project.nvim" }

function plugin.config()
  require("project_nvim").setup({})
end

return plugin
