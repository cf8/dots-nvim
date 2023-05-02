local plugin = { "nvim-treesitter/nvim-treesitter" }

plugin.pin = true

plugin.dependencies = {
  { "nvim-treesitter/nvim-treesitter-textobjects", pin = true },
  { "JoosepAlviste/nvim-ts-context-commentstring" },
}

plugin.opts = {
  ensure_installed = {
    "javascript",
    "typescript",
    "tsx",
    "css",
    "json",
    "lua",
    "vim",
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = { "python", "css" },
  },
  autopairs = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = true,
  },
}

function plugin.build()
  pcall(vim.cmd, "TSUpdate")
end

function plugin.config(_, opts)
  require("nvim-treesitter.configs").setup(opts)
end

return plugin
