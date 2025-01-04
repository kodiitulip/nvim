return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>mp',
      function() require('conform').format({ async = true }) end,
      mode = { 'n', 'v' },
      desc = 'Format buffer',
    },
  },
  ---@module "conform"
  ---@type conform.setupOpts
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
      gdshader = { 'gdformat' },
    },
    default_format_opts = { lsp_format = 'fallback' },
    format_on_save = function(bufnr)
      -- Disable autoformat on certain filetypes
      local ignore_filetypes = { 'sql', 'java', 'gdscript', 'gdshader' }
      if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then return end
      return { timeout_ms = 2500, lsp_format = 'fallback' }
    end,
    format_after_save = function(bufnr)
      local special = { 'gdscript', 'gdshader' }
      if vim.tbl_contains(special, vim.bo[bufnr].filetype) then return { async = true, timeout_ms = 2500 } end
    end,
    formatters = {
      prettier = {
        append_args = function()
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
  init = function() vim.o.formatexpr = "v:lua.require'conform'.formatexpr()" end,
}
