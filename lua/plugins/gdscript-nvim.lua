return {
  {
    'neovim/nvim-lspconfig',
    ---@class PluginLspOpts
    opts = {
      ---@diagnostic disable-next-line: undefined-doc-name
      ---@type lspconfig.options
      servers = {
        gdscript = {},
        gdshader_lsp = {},
      },
    },
  },
}
