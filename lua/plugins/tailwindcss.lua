return {
  {
    'catgoose/nvim-colorizer.lua',
    event = 'VeryLazy',
    opts = {
      lazy_load = true,
      user_default_options = {
        css = true,
        tailwind = 'both',
        tailwind_opts = {
          update_names = true,
        },
      },
    },
  },
  {
    'razak17/tailwind-fold.nvim',
    opts = {
      symbol = '󱏿',
      highlight = {
        fg = '#06B6D4',
      },
    },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    ft = {
      'html',
      'css',
      'heex',
      'html-heex',
      'javascript',
      'typescript',
      'svelte',
      'astro',
      'vue',
      'typescriptreact',
      'javascriptreact',
      'php',
      'blade',
    },
  },
}
