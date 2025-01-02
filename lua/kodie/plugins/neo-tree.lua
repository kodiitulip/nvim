return {
  'nvim-neo-tree/neo-tree.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim',
    {
      's1n7ax/nvim-window-picker',
      version = '2.*',
      config = function()
        require('window-picker').setup({
          filter_rules = {
            include_current_win = false,
            autoselect_one = true,
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
              -- if the buffer type is one of following, the window will be ignored
              buftype = { 'terminal', 'quickfix' },
            },
          },
        })
      end,
    },
  },
  config = function()
    require('neo-tree').setup({
      sort_case_insensitive = true, -- used when sorting files and directories in the tree
      filesystem = {
        group_empty_dirs = true, -- when true, empty folders will be grouped together
      },
      source_selector = {
        winbar = true,
        separator = { left = '/', right = '\\', override = 'right' },
      },
      window = {
        mappings = {
          ['P'] = { 'toggle_preview', config = { use_float = true, use_image_nvim = true } },
        },
      },
      default_component_configs = {
        diagnostics = {
          symbols = {
            hint = '󰌵 ',
            info = ' ',
            warn = ' ',
            error = ' ',
          },
          highlights = {
            hint = 'DiagnosticSignHint',
            info = 'DiagnosticSignInfo',
            warn = 'DiagnosticSignWarn',
            error = 'DiagnosticSignError',
          },
        },
      },
    })
    vim.keymap.set('n', '<leader>ee', ':Neotree toggle<cr>', { desc = 'Toggle Neotree', silent = true })
    vim.keymap.set('n', '<leader>er', ':Neotree focus<cr>', { desc = 'Refresh/Focus Neotree', silent = true })
  end,
}
