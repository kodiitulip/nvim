vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('i', 'jk', '<ESC>', { desc = 'Exit insert mode with jk' })

keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlight', silent = true })

-- increment/decrement numbers
keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment number' }) -- increment
keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement number' }) -- decrement

-- window management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' }) -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' }) -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' }) -- make split windows equal width & height
keymap.set('n', '<leader>sx', ':close<CR>', { desc = 'Close current split', silent = true }) -- close current split window

keymap.set('n', '<leader>to', ':tabnew<CR>', { desc = 'Open new tab', silent = true }) -- open new tab
keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close current tab', silent = true }) -- close current tab
keymap.set('n', '<leader>tn', ':tabn<CR>', { desc = 'Go to next tab', silent = true }) --  go to next tab
keymap.set('n', '<leader>tp', ':tabp<CR>', { desc = 'Go to previous tab', silent = true }) --  go to previous tab
keymap.set('n', '<leader>tf', ':tabnew %<CR>', { desc = 'Open current buffer in new tab', silent = true }) --  move current buffer to new tab

keymap.set('n', '<leader>ws', ':w<CR>', { desc = 'Save current buffer', silent = true })
keymap.set('n', '<leader>wa', ':wa<CR>', { desc = 'Save all buffers', silent = true })
keymap.set('n', '<leader>wi', ':wa!<CR>', { desc = 'Save all buffers, Ignore warning', silent = true })
keymap.set('n', '<leader>wq', ':wqa<CR>', { desc = 'Save all buffers and quit', silent = true })

keymap.set('n', '<leader>qq', ':qa<CR>', { desc = 'Quit NVIM', silent = true })
keymap.set('n', '<leader>qi', ':qa!<CR>', { desc = 'Quit NVIM ignore saving', silent = true })
