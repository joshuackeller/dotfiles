-- Show line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Set tabs size
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Vim smart indent
vim.opt.smartindent = true

-- Enable all colors
vim.opt.termguicolors = true

-- Cursor should move screen when it's 8 lines away from the top or bottom
vim.opt.scrolloff = 8

-- Don't wrap lines
vim.opt.wrap = false

-- Long history for undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
