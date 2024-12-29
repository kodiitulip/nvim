return {
  {
    'razak17/tailwind-fold.nvim',
    opts = {
      symbol = '󱏿',
    },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    ft = {
      'html',
      'svelte',
      'astro',
      'vue',
      'tsx',
      'typescriptreact',
      'php',
      'blade',
    },
    config = function(_, opts)
      require('tailwind-fold').setup(opts)

      local keymap = vim.keymap

      keymap.set('n', '<leader>cf', ':TailwindFoldToggle', { desc = 'Toggle Tailwind Fold', silent = true })
    end,
  },
  {
    'kevinhwang91/nvim-ufo',
    dependencies = {
      'kevinhwang91/promise-async',
    },
    opts = {
      open_fold_hl_timeout = 0,
      preview = {
        win_config = {
          border = 'rounded',
          winblend = 0,
        },
      },
      provider_selector = function(_, filetype, buftype)
        -- use nested markdown folding
        if filetype == 'markdown' then return '' end

        -- return ftMap[filetype] or { "treesitter", "indent" }
        -- return { "treesitter", "indent" }
        local function handleFallbackException(bufnr, err, providerName)
          if type(err) == 'string' and err:match('UfoFallbackException') then
            return require('ufo').getFolds(bufnr, providerName)
          else
            return require('promise').reject(err)
          end
        end

        -- only use indent until a file is opened
        return (filetype == '' or buftype == 'nofile') and 'indent'
          or function(bufnr)
            return require('ufo')
              .getFolds(bufnr, 'lsp')
              :catch(function(err) return handleFallbackException(bufnr, err, 'treesitter') end)
              :catch(function(err) return handleFallbackException(bufnr, err, 'indent') end)
          end
      end,
    },
    config = function(_, opts)
      local ufo = require('ufo')
      local keymap = vim.keymap
      local opt = vim.opt

      keymap.set('n', 'zR', ufo.openAllFolds, { desc = 'Open All Folds' })
      keymap.set('n', 'zM', ufo.closeAllFolds, { desc = 'Close All Folds' })
      keymap.set('n', 'zK', function()
        local winid = ufo.peekFoldedLinesUnderCursor()
        if not winid then vim.lsp.buf.hover() end
      end, { desc = 'Peek Fold' })

      -- code folding
      opt.foldcolumn = '1'
      opt.foldenable = true
      opt.foldlevelstart = 99
      opt.foldlevel = 99

      ufo.setup(opts)
    end,
  },
}
