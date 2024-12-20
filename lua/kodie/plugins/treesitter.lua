---@diagnostic disable: missing-fields
return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPre', 'BufNewFile' },
  build = ':TSUpdate',
  dependencies = { 'windwp/nvim-ts-autotag' },
  config = function()
    local treesitter = require('nvim-treesitter.configs')

    treesitter.setup({
      hightlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
      auto_install = true,
      sync_install = false,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<C-space>',
          node_incremental = '<C-space>',
          scope_incremental = false,
          node_decremental = '<bs>',
        },
      },
    })
  end,
}
