local plugin = { "neovim/nvim-lspconfig" }

plugin.opts = {
	inlay_hints = { enabled = true },
}


function plugin.config()
	require("plugins.lsp.handlers").setup()
end

return plugin
