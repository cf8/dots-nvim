local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local lazy = {}
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

function lazy.setup(plugins)
	vim.opt.rtp:prepend(lazy.path)
	require("lazy").setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
lazy.opts = {
	ui = {
		border = "rounded",
	},
	install = {
		missing = true,
		colorscheme = { "nightly" },
	},
	change_detection = {
		notify = true,
	},
}

lazy.setup({
	{ import = "plugins" },
	{ "moll/vim-bbye" },
	-- { "tpope/vim-sleuth" },
	{ "editorconfig/editorconfig-vim" },
})
