return {
  'folke/tokyonight.nvim',
  priority = 1000,
  opts = {},
  config = function() vim.cmd([[colorscheme tokyonight]]) end,
}
