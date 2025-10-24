return {
  {
    "pandalec/gradle.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "akinsho/toggleterm.nvim",
    },
    opts = {
      keymaps = false,
    },
    keys = {
      { "<leader>G", mode = { "n" }, desc = "Gradle" },
      {
        "<leader>Gr",
        function()
          require("gradle").tasks.refresh_tasks_async()
        end,
        mode = { "n" },
        desc = "Refresh Gradle tasks",
      },
      {
        "<leader>Gt",
        function()
          require("gradle").telescope.pick_tasks()
        end,
        mode = { "n" },
        desc = "Pick and run a Gradle task",
      },
      {
        "<leader>Gw",
        function()
          require("gradle").terminal.toggle()
        end,
        mode = { "n" },
        desc = "Toggle the Gradle floating terminal",
      },
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
