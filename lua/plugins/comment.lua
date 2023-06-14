local plugin = { "numToStr/Comment.nvim" }

function plugin.config()
	require("Comment").setup({
		pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
	})
end

return plugin
