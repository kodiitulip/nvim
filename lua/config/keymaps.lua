local keymap = vim.keymap
-- local opts = { noremap = true, silent = true }

-- Increment/Decrement
-- keymap.set('n', '+', '<C-a>')
-- keymap.set('n', '-', '<C-x>')

-- Delete word backwards
-- keymap.set('n', 'dw', 'vb_d', { desc = 'Delete word backwards' })

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all' })

-- -- Jumplist
-- opts.desc = 'Jumplist'
-- keymap.set('n', '<C-m>', '<C-i>', opts)

-- Exit insert with jk
keymap.set('i', 'jk', '<c-\\><c-n>', { desc = 'Exit insert mode with jk' })
