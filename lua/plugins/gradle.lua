return {
  {
    "oclay1st/gradle.nvim",
    cmd = { "Gradle", "GradleExec", "GradleInit" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      gradle_executable = "./gradlew",
    },
    keys = {
      { "<leader>G", "<cmd>Gradle<cr>", desc = "Gradle" },
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
