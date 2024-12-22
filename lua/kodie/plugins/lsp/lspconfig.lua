return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    { 'antosha417/nvim-lsp-file-operations', config = true },
    { 'folke/neodev.nvim', opts = {} },
    'themaxmarchuk/tailwindcss-colors.nvim',
  },
  config = function()
    local lspconfig = require('lspconfig')
    local mason_lspconfig = require('mason-lspconfig')
    local cmp_nvim_lsp = require('cmp_nvim_lsp')

    local keymap = vim.keymap

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

        opts.desc = 'Show LSP references'
        keymap.set('n', 'gR', ':Telescope lsp_references<cr>', opts)

        opts.desc = 'Go to declaration'
        keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)

        opts.desc = 'Show LSP definitions'
        keymap.set('n', 'gd', ':Telescope lsp_definitions<cr>', opts)

        opts.desc = 'Show LSP implementations'
        keymap.set('n', 'gi', ':Telescope lsp_implementations<cr>', opts)

        opts.desc = 'Show LSP type definitions'
        keymap.set('n', 'gt', ':Telescope lsp_type_definitions<cr>', opts)

        opts.desc = 'See code actions'
        keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)

        opts.desc = 'Smart rename'
        keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

        opts.desc = 'Show Buffer Diagnostics'
        keymap.set('n', '<leader>D', ':Telescope diagnostics bufnr=0<cr>', opts)

        opts.desc = 'Go to prev diagnostics'
        keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)

        opts.desc = 'Go to next diagnostics'
        keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

        opts.desc = 'Show documentation from under the cursor'
        keymap.set('n', 'K', vim.lsp.buf.hover, opts)

        opts.desc = 'Restart LSP'
        keymap.set('n', '<leader>rs', ':LspRestart<cr>', opts)
      end,
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()
    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,
      ['emmet_ls'] = function()
        lspconfig['emmet_ls'].setup({
          capabilities = capabilities,
          filetypes = {
            'html',
            'typescriptreact',
            'javascriptreact',
            'css',
            'sass',
            'less',
          },
        })
      end,
      ['lua_ls'] = function()
        lspconfig['lua_ls'].setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              diagnostics = { globals = { 'vim' } },
              completion = { callSnippet = 'Replace' },
            },
          },
        })
      end,
      ['tailwindcss'] = function()
        lspconfig['tailwindcss'].setup({
          capabilities = capabilities,
          ---@diagnostic disable-next-line: unused-local
          on_attach = function(client, bufnr)
            require('tailwindcss-colors').buf_attach(bufnr)
          end,
        })
      end,
    })
  end,
}
