-- require("which-key").add({
--   { "<leader>N", group = "Nerdy Finder" },
-- })

return {
  "2kabhishek/nerdy.nvim",
  dependencies = {
    "folke/snacks.nvim",
  },
  cmd = "Nerdy",
  opts = {
    max_recents = 30,
    add_default_keybindings = false,
    copy_to_clipboard = false,
  },
  keys = {
    { "<leader>N", mode = { "n" }, desc = "Nerdy Finder" },
    { "<leader>Nf", "<cmd>Nerdy list<cr>", mode = { "n" }, desc = "All Glyphs" },
    { "Nf", "<cmd>Nerdy list<cr>", mode = { "i" }, desc = "All Glyphs" },
    { "<leader>NF", "<cmd>Nerdy recents<cr>", mode = { "n" }, desc = "Recent Glyphs" },
    { "NF", "<cmd>Nerdy recents<cr>", mode = { "i" }, desc = "Recent Glyphs" },
  },
}
