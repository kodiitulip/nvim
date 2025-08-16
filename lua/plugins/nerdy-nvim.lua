return {
  '2kabhishek/nerdy.nvim',
  dependencies = {
    'folke/snacks.nvim',
  },
  cmd = 'Nerdy',
  keys = {
    { '<leader>Nf', '<cmd>Nerdy<cr>', mode = { 'n' }, desc = 'Nerdy Finder' },
    { 'Nf', '<cmd>Nerdy<cr>', mode = { 'i' }, desc = 'Nerdy Finder' },
  },
}
