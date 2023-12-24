local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",ss

-- Normal --
keymap("n", "<leader>0", ":colorscheme oxocarbon<cr>", opts)
-- Better window navigation
keymap("n", "<S-h>", "<C-w>h", opts) -- navigate left
keymap("n", "<S-j>", "<C-w>j", opts) -- navigate down
keymap("n", "<S-k>", "<C-w>k", opts) -- navigate up
keymap("n", "<S-l>", "<C-w>l", opts) -- navigate right

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- splits
keymap("n", "<leader>v", ":vertical split<cr>", opts)
keymap("n", "<leader>h", ":split<cr>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Extra --
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>p", [["_dP"]])
