return {
  'stevearc/conform.nvim',
  event = { 'LspAttach', 'BufReadPost', 'BufNewFile' },
  opts = {
    formatters_by_ft = {
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      javascriptreact = { 'prettier' },
      typescriptreact = { 'prettier' },
      css = { 'prettier' },
      html = { 'prettier' },
      json = { 'prettier' },
      markdown = { 'prettier' },
      lua = { 'stylua' },
      python = { 'isort', 'black' },
      gdscript = { 'gdformat' },
    },
    format_on_save = {
      lsp_fallback = true,
      async = false,
      timeout_ms = 2500,
    },
    formatters = {
      prettier = {
        args = function()
          return {
            '--stdin-filepath',
            '$FILENAME',
            '--plugin',
            'prettier-plugin-tailwindcss',
          }
        end,
      },
    },
  },
  config = function(_, opts)
    local conform = require('conform')

    conform.setup(opts)

    vim.keymap.set(
      { 'n', 'v' },
      '<leader>mp',
      function()
        conform.format({
          lsp_fallback = true,
          async = true,
          timeout_ms = 2500,
        })
      end,
      { desc = 'Format buffer or range' }
    )
  end,
}
