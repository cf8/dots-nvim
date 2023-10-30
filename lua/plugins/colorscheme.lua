local plugins = {
	"RRethy/nvim-base16",
	-- "ellisonleao/gruvbox.nvim",
}

local colorscheme = "base16-gruvbox-dark-medium"
-- local colorscheme = "gruvbox"

function plugins.config()
	pcall(vim.cmd, "colorscheme " .. colorscheme)

	vim.opt.fillchars:append("vert:▕")

	vim.api.nvim_set_hl(0, "VertSplit", { fg = "#32302f", bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#32302f", bg = "NONE" })

	vim.api.nvim_set_hl(0, "my_bg", { bg = "#1e1e1e" })
	vim.api.nvim_set_hl(0, "my_bg_cursor", { bg = "#32302f", fg = "#fabd2f" })
	vim.api.nvim_set_hl(0, "LineNr", { link = "my_bg" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { link = "my_bg_cursor" })

	vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
	vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
	vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })
end

return plugins
