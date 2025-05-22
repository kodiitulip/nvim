return {
  '2kabhishek/nerdy.nvim',
  dependencies = {
    'folke/snacks.nvim',
  },
  cmd = 'Nerdy',
  keys = {
    { '<leader>fN', '<cmd>Nerdy<cr>', mode = { 'n' }, desc = 'Nerdy Finder' },
  },
}
