local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/Decrement
keymap.set('n', '+', '<C-a>', opts)
keymap.set('n', '-', '<C-x>', opts)

-- Exit insert with jk
keymap.set('i', 'jk', '<c-\\><c-n>', { desc = 'Exit insert mode with jk' })
