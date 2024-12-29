return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'folke/todo-comments.nvim' },
  keys = {
    {
      '<leader>xw',
      ':Trouble diagnostics toggle<CR>',
      desc = 'Open trouble workspace diagnostics',
    },
    {
      '<leader>xd',
      ':Trouble diagnostics toggle filter.buf=0<CR>',
      desc = 'Open trouble document diagnostics',
    },
    {
      '<leader>xq',
      ':Trouble quickfix toggle<CR>',
      desc = 'Open trouble quickfix list',
    },
    {
      '<leader>xl',
      ':Trouble loclist toggle<CR>',
      desc = 'Open trouble location list',
    },
    {
      '<leader>xt',
      ':Trouble todo toggle<CR>',
      desc = 'Open todos in trouble',
    },
  },
  opts = {
    focus = true,
  },
  cmd = 'Trouble',
}
