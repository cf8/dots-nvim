local colorscheme = "gruvbox-material"
vim.cmd("let g:gruvbox_material_background = 'medium'")
vim.cmd("let g:gruvbox_material_foreground = 'original'")

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
