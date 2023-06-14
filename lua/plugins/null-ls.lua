local plugin = { "jose-elias-alvarez/null-ls.nvim" }

function plugin.config()
	local null_ls = require("null-ls")
	local formatting = null_ls.builtins.formatting
	null_ls.setup({
		debug = false,
		sources = {
      formatting.eslint_d,
			formatting.prettierd,
			formatting.stylua,
			formatting.stylelint,
		},
	})
end

return plugin
