local plugin = { "utilyre/barbecue.nvim" }

plugin.name = "barbecue"
plugin.version = "*"
plugin.dependencies = {
	"SmiteshP/nvim-navic",
	"nvim-tree/nvim-web-devicons",
}

plugin.opts = {}

function plugin.config()
	require("barbecue").setup({
		theme = {
		},
	})
end

return plugin
