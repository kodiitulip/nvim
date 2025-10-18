vim.filetype.add({
  pattern = {
    [".*LICENSE.*"] = "license",
    [".*/.github/workflows/.*%.yml"] = "yaml.ghaction",
    [".*.mcmeta"] = "json.mcmeta",
  },
  extension = {
    mcfunction = "mcfunction",
    mcdoc = "mcdoc",
    bolt = "bolt",
  },
})

return {
  {
    "stevearc/conform.nvim",
    opts = {
      default_format_opts = {
        lsp_format = "fallback",
        timeout_ms = 5500,
      },
    },
  },
  {
    "nvim-mini/mini.icons",
    opts = {
      filetype = {
        license = { glyph = "", hl = "MiniIconsCyan" },
        mcfunction = { glyph = "󰍳", hl = "MiniIconsGreen" },
        bolt = { glyph = "", hl = "MiniIconsLime" },
      },
      extension = {
        mcfunction = { glyph = "󰍳", hl = "MiniIconsGreen" },
        ["json.mcmeta"] = { glyph = "󰍳", hl = "MiniIconsLime" },
        bolt = { glyph = "", hl = "MiniIconsLime" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        ["yaml.ghaction"] = { "actionlint" },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        spyglassmc_language_server = {},
      },
    },
  },
}
