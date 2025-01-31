local map = LazyVim.safe_keymap_set
local opts = { noremap = true, silent = true }

-- Increment/Decrement
map('n', '+', '<C-a>', opts)
map('n', '-', '<C-x>', opts)

-- Exit insert with jk
map('i', 'jk', '<c-\\><c-n>', { desc = 'Exit insert mode with jk' })
