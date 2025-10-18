-- Disable cursor animations and set cursor to block in all modes
vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Enable syntax highlighting
vim.cmd("syntax enable")

-- Disable all cursor animations and transitions
vim.opt.guicursor = "a:block-blinkon0"
vim.opt.cursorline = false

-- Disable smooth scrolling and animations
vim.opt.lazyredraw = false
vim.opt.ttyfast = true
vim.opt.redrawtime = 0

-- Force immediate screen updates
vim.opt.updatetime = 50

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Disable cursor animations and smooth scrolling
vim.opt.lazyredraw = false
vim.opt.ttyfast = true

-- Disable cursor line to prevent visual artifacts
vim.opt.cursorline = false

vim.opt.colorcolumn = "80"

vim.opt.clipboard:append("unnamedplus")

