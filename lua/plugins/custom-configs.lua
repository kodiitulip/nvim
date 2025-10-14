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
