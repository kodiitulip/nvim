return {
  {
    "benomahony/uv.nvim",
    ft = { "python" },
    opts = {
      keymaps = false,
    },
  },
  {
    "cachebag/nvim-tcss",
    config = true,
    ft = { "tcss" },
  },
  {
    "nvim-mini/mini.icons",
    opts = {
      filetype = {
        tcss = { glyph = "󰙩", hl = "MiniIconsYellow" },
      },
      extension = {
        tcss = { glyph = "󰙩", hl = "MiniIconsYellow" },
      },
    },
  },
}
