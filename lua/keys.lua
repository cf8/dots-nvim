-- local wk = require("which-key")
--
-- local mappings = {
--   ["<leader>"] = {
--     c = { "<cmd>Bdelete!<cr>", "Close current buffer" },
--     e = { "<cmd>NvimTreeToggle<cr>", "Show file tree" },
--   },
--   [";"] = {":"},
-- }
--
-- local opts = {}
--
-- wk.register(mappings, opts)

-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap("n", ";", ":", opts)

keymap("n", "<leader>c", ":Bdelete!<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<c-l>", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader><Space>", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fo", ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- lsp
keymap("n", "K", vim.lsp.buf.hover, opts)
keymap("n", "gr", require("telescope.builtin").lsp_references, opts)

-- git messenger
keymap("n", "gb", "<cmd>GitMessenger<cr>", opts)

-- ranger
keymap("n", "<leader>r", ":RnvimrToggle<CR>", opts)
keymap("t", "<leader>r", "<C-\\><C-n>:RnvimrToggle<CR>", opts)

keymap("n", "<leader>sv", "<cmd>source $MYVIMRC<cr>", opts)

-- keymap(
--   "n",
--   "<LeftMouse>",
--   '<LeftMouse><cmd>lua vim.lsp.buf.hover({border = "single"})<CR>',
--   { noremap = true, silent = true }
-- )

keymap("n", "<RightMouse>", "<LeftMouse><cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

keymap("n", "<C-ScrollWheelUp>", "<C-i>", { noremap = true, silent = true })
keymap("n", "<C-ScrollWheelDown>", "<C-o>", { noremap = true, silent = true })
