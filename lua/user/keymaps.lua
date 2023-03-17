local map = vim.keymap.set

vim.g.mapleader = ' ' 

-- jk to exit insert mode
map('i', 'jk', '<ESC>')

-- Move to window using the <ctrl> hjkl keys
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Split window
map('n', '<leader>sp', '<C-w>s')
map('n', '<leader>vs', '<C-w>v')

-- Capitalize
map('n', 'gu', '~h')
map('x', 'gu', '~')

-- <ESC> and jk to exit insert mode in terminal
map('t', '<ESC>', '<C-\\><C-n>')

-- Resize window using <ctrl> arrow keys
map('n', '<C-Up>', '<CMD>resize +2<CR>')
map('n', '<C-Down>', '<CMD>resize -2<CR>')
map('n', '<C-Right>', '<CMD>vertical resize -2<CR>')
map('n', '<C-Left>', '<CMD>vertical resize +2<CR>')

-- Move Lines
map('n', '<A-j>', '<CMD>m .+1<cr>==')
map('n', '<A-k>', '<CMD>m .-2<cr>==')
map('i', '<A-j>', '<ESC><cmd>m .+1<cr>==gi')
map('i', '<A-k>', '<ESC><cmd>m .-2<cr>==gi')
map('v', '<A-j>', '<CMD>m ">+1<cr>gv=gv')
map('v', '<A-k>', '<CMD>m "<-2<cr>gv=gv')

-- Better indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Telescope
map('n', '<leader>fe', '<CMD>Telescope file_browser<CR>')
map('n', '<leader>ff', '<CMD>Telescope find_files<CR>')
map('n', '<leader>fh', '<CMD>Telescope help_tags<CR>')
map('n', '<leader>fg', '<CMD>Telescope live_grep<CR>')
