-- Remap space as leader key
vim.keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Moving blocks of code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Telescope
vim.keymap.set("n", "<leader>fa", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "x", '"_x')

-- Splitting current window
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", "<cmd>close<cr>")

-- Managing tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<cr>")
keymap.set("n", "<leader>tx", "<cmd>tabclose<cr>")
keymap.set("n", "<leader>tn", "<cmd>tabn<cr>")
keymap.set("n", "<leader>tp", "<cmd>tabp<cr>")

-- nvim-tree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- terminal
keymap.set("n", "<leader>t", "<cmd>terminal<cr>")
