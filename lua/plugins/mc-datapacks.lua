return {
  -- {
  --   'neovim/nvim-lspconfig',
  --   opts = {
  --     servers = {
  --       spyglassmc_language_server = {},
  --     },
  --   },
  -- },
  {
    'echasnovski/mini.icons',
    opts = {
      filetype = {
        mcfunction = { glyph = '󰍳', hl = 'MiniIconsGreen' },
        bolt = { glyph = '', hl = 'MiniIconsLime' },
      },
      extension = {
        mcfunction = { glyph = '󰍳', hl = 'MiniIconsGreen' },
        mcmeta = { glyph = '󰍳', hl = 'MiniIconsLime' },
        bolt = { glyph = '', hl = 'MiniIconsLime' },
      },
    },
  },
}
