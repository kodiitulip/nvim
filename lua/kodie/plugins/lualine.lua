return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'arkav/lualine-lsp-progress' },
  config = function()
    local lualine = require('lualine')
    local lazy_status = require('lazy.status')

    lualine.setup({
      options = {
        theme = 'auto',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'filename' },
        lualine_c = {
          {
            'lsp_progress',
            spinner_symbols = {
              '󰪞 ',
              '󰪟 ',
              '󰪠 ',
              '󰪡 ',
              '󰪢 ',
              '󰪣 ',
              '󰪤 ',
              '󰪥 ',
            },
          },
        },
        lualine_x = {
          { lazy_status.updates, cond = lazy_status.has_updates },
        },
        lualine_y = { 'encoding', 'fileformat', 'filetype' },
        lualine_z = { 'branch' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
