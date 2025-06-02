return {
  {
    'neovim/nvim-lspconfig',
    ---@class PluginLspOpts
    opts = {
      ---@diagnostic disable-next-line: undefined-doc-name
      ---@type lspconfig.options
      servers = {
        spyglassmc_language_server = {
          filetypes = {
            'mcfunction',
            'json',
            'mcmeta',
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
        mcmeta = { glyph = '󰍳', hl = 'MiniIconsGreen' },
      },
      extension = {
        mcfunction = { glyph = '󰍳', hl = 'MiniIconsGreen' },
        mcmeta = { glyph = '󰍳', hl = 'MiniIconsGreen' },
      },
    },
  },
}
