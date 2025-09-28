-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Cursor always in block mode
vim.opt.guicursor = ""

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- UI
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.background = "dark"
vim.opt.signcolumn = "no"
vim.opt.laststatus = 2
vim.opt.showtabline = 1
vim.opt.cmdheight = 0
vim.opt.updatetime = 50

-- Disable command-line completion menu
vim.opt.wildmenu = false