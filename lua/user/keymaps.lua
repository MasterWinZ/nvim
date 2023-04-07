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
map('n', 'sh', '<C-w>s')
map('n', 'sv', '<C-w>v')

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
map('n', '<A-j>', '<CMD>m .+1<cr>')
map('n', '<A-k>', '<CMD>m .-2<cr>')
map('x', '<A-k>', "<CMD>'<,'>m '<-2<cr>")
map('x', '<A-j>', "<CMD>'<,'>m '>+1<cr>")

-- Better indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Telescope
map('n', '<leader>ff', '<CMD>Telescope find_files<CR>')
map('n', '<leader>fh', '<CMD>Telescope help_tags<CR>')
map('n', '<leader>fg', '<CMD>Telescope live_grep<CR>')
map('n', '<leader>fd', '<CMD>Telescope diagnostics<CR>')
map('n', '<leader>fb', '<CMD>Telescope buffers<CR>')
map('n', '<leader>fe', '<CMD>Telescope file_browser<CR>')

-- Tab
map('n', '<leader>te', '<CMD>tabnew<CR>')
map('n', '<leader>tc', '<CMD>tabclose<CR>')
map('n', '<Tab>', '<CMD>tabn<CR>')
map('n', '<S-Tab>', '<CMD>tabp<CR>')
map('n', '<leader>tn', '<CMD>tabn<CR>')
map('n', '<leader>tp', '<CMD>tabp<CR>')

-- Buffer
map('n', '<leader>bd', '<CMD>bd<CR>')
map('n', '<leader>bn', '<CMD>bn<CR>')
map('n', '<leader>bp', '<CMD>bp<CR>')

-- Terminal
map('n', '<leader>t', '<CMD>exe v:count1 . "ToggleTerm"<CR>')

-- Nabla
map('n', '<leader>p', '<CMD>lua require("nabla").popup()<CR>')
