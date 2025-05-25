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
      },
      extension = {
        mcfunction = { glyph = '󰍳', hl = 'MiniIconsGreen' },
      },
    },
  },
}
