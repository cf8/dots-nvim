local opt = vim.opt
local g = vim.g

g.mapleader = " "

-- global statusline
opt.laststatus = 3
opt.showmode = false

opt.clipboard = "unnamedplus"
opt.cursorline = false

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.number = true
opt.numberwidth = 4
opt.ruler = false

-- disable nvim intro
opt.shortmess:append("sIFt")

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.updatetime = 300

opt.undofile = true
opt.backup = false
opt.swapfile = false
opt.writebackup = false

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>[]hl")

-- disable some default providers
for _, provider in ipairs({ "node", "perl", "python3", "ruby" }) do
  vim.g["loaded_" .. provider .. "_provider"] = 0
end

-- treat words with `-` as single words
vim.opt.iskeyword:append("-")

-- hide all the completion messages, e.g. "-- XXX completion (YYY)", "match 1 of 2", "The only match", "Pattern not found"
vim.opt.shortmess:append("c")

-- display lines as one long line
vim.opt.wrap = false

-- minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 8
