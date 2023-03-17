local map = vim.keymap.set

vim.g.mapleader = ' ' 

-- jk to exit insert mode
map('i', 'jk', '<ESC>')

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Split window
map("n", "<leader>sp", "<C-w>s")
map("n", "<leader>vs", "<C-w>v")

-- Capitalize
map("n", "gu", "~h")
map("x", "gu", "~")

-- <ESC> and jk to exit insert mode in terminal
map("t", "<ESC>", "<C-\\><C-n>")

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>")
map("n", "<C-Down>", "<cmd>resize -2<cr>")
map("n", "<C-Right>", "<cmd>vertical resize -2<cr>")
map("n", "<C-Left>", "<cmd>vertical resize +2<cr>")

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==")
map("n", "<A-k>", "<cmd>m .-2<cr>==")
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi")
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi")
map("v", "<A-j>", ":m '>+1<cr>gv=gv")
map("v", "<A-k>", ":m '<-2<cr>gv=gv")

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")
