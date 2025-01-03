return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    local mason = require('mason')
    local mason_lsp = require('mason-lspconfig')
    local mason_tool = require('mason-tool-installer')

    mason.setup()

    mason_lsp.setup({
      ensure_installed = {
        'html',
        'cssls',
        'tailwindcss',
        'lua_ls',
        'emmet_language_server',
        'pyright',
        'eslint',
        'jsonls',
      },
    })

    mason_tool.setup({
      ensure_installed = {
        'prettier',
        'stylua',
        'isort',
        'gdtoolkit',
        'pylint',
      },
    })
  end,
}
