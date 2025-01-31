require('lspconfig').spyglassmc_language_server.setup({})
return {
  {
    'stevearc/conform.nvim',
    opts = {
      default_format_opts = {
        timeout_ms = 5000,
      },
    },
  },
}
