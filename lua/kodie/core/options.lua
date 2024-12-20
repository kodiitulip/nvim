vim.cmd('let g:netrw_liststyle = 3')

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line

opt.wrap = false

-- searc settings
opt.ignorecase = true -- ignore casing
opt.smartcase = true -- if mixed case, assumes case-sensitivity

opt.cursorline = true

opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'

-- backspace
opt.backspace = 'indent,eol,start'

-- clipboard
opt.clipboard:append('unnamedplus') -- use system clipboard

-- split
opt.splitright = true
opt.splitbelow = true
