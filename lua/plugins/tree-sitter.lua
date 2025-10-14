vim.g.query_lint_on = {}
return {
  {
    "tree-sitter-grammars/tree-sitter-test",
    build = "mkdir parser && tree-sitter build -o parser/test.so",
    ft = "test",
    init = function()
      -- toggle full-width rules for test separators
      vim.g.tstest_fullwidth_rules = false
      -- set the highlight group of the rules
      vim.g.tstest_rule_hlgroup = "FoldColumn"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ts_query_ls = {
          settings = {
            parser_install_directories = {
              -- If using nvim-treesitter with lazy.nvim
              vim.fs.joinpath(vim.fn.stdpath("data"), "/lazy/nvim-treesitter/parser/"),
            },
          },
        },
      },
    },
  },
  {
    "nvim-mini/mini.icons",
    opts = {
      filetype = {
        test = { glyph = "󰐅", hl = "MiniIconsRed" },
      },
      extension = {
        test = { glyph = "󰐅", hl = "MiniIconsRed" },
      },
    },
  },
}
