return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        spyglassmc_language_server = {
          filetypes = {
            'mcfunction',
            'json',
            'mcdoc',
          },
          root_markers = {
            'pack.mcmeta',
          },
        },
      },
    },
  },

  {
    'echasnovski/mini.icons',
    opts = {
      filetype = {
        mcfunction = { glyph = '󰍳', hl = 'MiniIconsGreen' },
        mcdoc = { glyph = '󱔗', hl = 'MiniIconsBlue' },
      },
      extension = {
        mcfunction = { glyph = '󰍳', hl = 'MiniIconsGreen' },
        mcmeta = { glyph = '󰍳', hl = 'MiniIconsLime' },
        mcdoc = { glyph = '󱔗', hl = 'MiniIconsBlue' },
      },
    },
  },
}
