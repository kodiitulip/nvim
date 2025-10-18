return {
  {
    "oclay1st/gradle.nvim",
    cmd = { "Gradle", "GradleExec", "GradleInit", "GradleFavorites" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      gradle_executable = "./gradlew",
      project_scanner_depth = 1,
    },
    keys = {
      { "<leader>G", desc = "+Gradle", mode = { "n", "v" } },
      { "<leader>Gg", "<cmd>Gradle<cr>", desc = "Gradle Projects" },
      { "<leader>Gf", "<cmd>GradleFavorites<cr>", desc = "Gradle Favorite Commands" },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        groovy = { "npm-groovy-lint" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        groovy = { "npm-groovy-lint" },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        groovyls = {},
      },
    },
  },
}
