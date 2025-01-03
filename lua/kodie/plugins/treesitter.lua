---@diagnostic disable: missing-fields
return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPre', 'BufNewFile' },
  build = ':TSUpdate',
  dependencies = { 'windwp/nvim-ts-autotag' },
  opts = {
    hightlight = { enable = true },
    indent = { enable = false },
    autotag = { enable = true },
    auto_install = true,
  },
}
