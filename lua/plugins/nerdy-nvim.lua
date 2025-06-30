return {
  '2kabhishek/nerdy.nvim',
  dependencies = {
    'folke/snacks.nvim',
  },
  cmd = 'Nerdy',
  keys = {
    { '<leader>sN', '<cmd>Nerdy<cr>', mode = { 'n' }, desc = 'Nerdy Finder' },
    { 'sN', '<cmd>Nerdy<cr>', mode = { 'i' }, desc = 'Nerdy Finder' },
  },
}
