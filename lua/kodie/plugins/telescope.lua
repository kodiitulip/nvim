return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-tree/nvim-web-devicons',
    'folke/todo-comments.nvim',
    {
      'nvim-telescope/telescope-ui-select.nvim',
      opts = {
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown({}),
          },
        },
      },
      config = function(_, opts)
        local telescope = require('telescope')

        telescope.setup(opts)
        telescope.load_extension('ui-select')
      end,
    },
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    telescope.setup({
      pickers = {
        find_files = {
          hidden = true,
          -- needed to exclude some files & dirs from general search
          -- when not included or specified in .gitignore
          find_command = {
            'rg',
            '--files',
            '--hidden',
            '--glob=!**/.git/*',
            '--glob=!**/.idea/*',
            '--glob=!**/.vscode/*',
            '--glob=!**/build/*',
            '--glob=!**/dist/*',
            '--glob=!**/yarn.lock',
            '--glob=!**/package-lock.json',
          },
        },
      },
      defaults = {
        path_display = { 'smart' },
        mappings = {
          i = {
            ['<C-k>'] = actions.move_selection_previous,
            ['<C-j>'] = actions.move_selection_next,
            ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
        vimgrep_arguments = {
          'rg',
          '--follow', -- Follow symbolic links
          '--hidden', -- Search for hidden files
          '--no-heading', -- Don't group matches by each file
          '--with-filename', -- Print the file path with the matched lines
          '--line-number', -- Show line numbers
          '--column', -- Show column numbers
          '--smart-case', -- Smart case search

          -- Exclude some patterns from search
          '--glob=!**/.git/*',
          '--glob=!**/.idea/*',
          '--glob=!**/.vscode/*',
          '--glob=!**/build/*',
          '--glob=!**/dist/*',
          '--glob=!**/yarn.lock',
          '--glob=!**/package-lock.json',
        },
      },
    })

    telescope.load_extension('fzf')

    local keymap = vim.keymap

    keymap.set('n', '<leader>ff', ':Telescope find_files<cr>', { desc = 'Fuzzy find files in cwd', silent = true })
    keymap.set('n', '<leader>fr', ':Telescope oldfiles<cr>', { desc = 'Fuzzy find recent files', silent = true })
    keymap.set('n', '<leader>fs', ':Telescope live_grep<cr>', { desc = 'Find string', silent = true })
    keymap.set('n', '<leader>fc', ':Telescope grep_string<cr>', { desc = 'Find string under cursor', silent = true })
    keymap.set('n', '<leader>ft', ':TodoTelescope<cr>', { desc = 'Find todos', silent = true })
  end,
}
