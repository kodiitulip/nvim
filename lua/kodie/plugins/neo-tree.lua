return {
  'nvim-neo-tree/neo-tree.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    -- If you want icons for diagnostic errors, you'll need to define them somewhere:
    vim.fn.sign_define(
      'DiagnosticSignError',
      { text = ' ', texthl = 'DiagnosticSignError' }
    )
    vim.fn.sign_define(
      'DiagnosticSignWarn',
      { text = ' ', texthl = 'DiagnosticSignWarn' }
    )
    vim.fn.sign_define(
      'DiagnosticSignInfo',
      { text = ' ', texthl = 'DiagnosticSignInfo' }
    )
    vim.fn.sign_define(
      'DiagnosticSignHint',
      { text = '󰌵', texthl = 'DiagnosticSignHint' }
    )

    require('neo-tree').setup({
      sort_case_insensitive = true, -- used when sorting files and directories in the tree
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          always_show = { -- remains visible even if other settings would normally hide it
            '.gitignored',
          },
          always_show_by_pattern = { -- uses glob style patterns
            'env*',
          },
        },
        group_empty_dirs = true, -- when true, empty folders will be grouped together
      },
    })
    vim.keymap.set(
      'n',
      '<leader>ee',
      ':Neotree toggle<cr>',
      { desc = 'Toggle Neotree' }
    )
    vim.keymap.set(
      'n',
      '<leader>er',
      ':Neotree focus<cr>',
      { desc = 'Refresh/Focus Neotree' }
    )
  end,
}
