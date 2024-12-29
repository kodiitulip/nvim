return {
  'rmagatti/auto-session',
  config = function()
    local auto_session = require('auto-session')

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = {
        '~/',
        '~/GodotGames',
        '~/Downloads',
        '~/Documents',
        '~/Documents',
        '~/Desktop',
      },
    })

    local keymap = vim.keymap

    keymap.set('n', '<leader>ar', ':SessionRestore<cr>', { desc = 'Restore session for cwd' })
    keymap.set('n', '<leader>as', ':SessionSave<cr>', { desc = 'Save session for auto session root dir' })
  end,
}
