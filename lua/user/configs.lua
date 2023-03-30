local opt = vim.opt

opt.termguicolors = true -- True color support
opt.number = true -- Line number
opt.relativenumber = false -- Relative line number
opt.signcolumn = "yes" -- Signcolumn
opt.clipboard = "unnamedplus" -- Allow paste from system clipboard
opt.confirm = true -- Ask to save before exit modified buffer
opt.cursorline = true -- Current line highlight
opt.expandtab = true -- Use spaces instead of tab
opt.shiftwidth = 4 -- Indent size
opt.smartindent = true -- Auto indent
opt.shiftround = true -- Round indent
opt.mouse = "a" -- Enable mouse
opt.scrolloff = 8 -- Line of context
opt.showmode = false -- Don't show mode
opt.spelllang = { "en" }
opt.splitbelow =  true -- New window below current
opt.splitright = true -- New window on the right
opt.wrap = false -- Line wrap
opt.hlsearch = false -- Disable search highlight
