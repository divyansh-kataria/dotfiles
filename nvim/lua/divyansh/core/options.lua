vim.g.theme = "catppuccin"

local opt = vim.opt

-- line numbers
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- UI
opt.wrap = false
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"

-- scrolling
opt.scrolloff = 8

-- search
opt.ignorecase = true
opt.smartcase = true

-- splits
opt.splitright = true
opt.splitbelow = true

-- clipboard
opt.clipboard = "unnamedplus"

-- performance
opt.updatetime = 250
opt.timeoutlen = 400
