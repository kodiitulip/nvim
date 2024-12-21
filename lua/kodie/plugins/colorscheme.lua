return {
  'folke/tokyonight.nvim',
  name = 'tokyonight',
  priority = 1000,
  opts = { style = 'moon' },
  config = function()
    require('tokyonight').setup()
    vim.cmd.colorscheme('tokyonight')
  end,
}
