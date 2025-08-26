return {
  {
    'mfussenegger/nvim-lint',
    opts = {
      linters = {
        actionlint = {
          condition = function(ctx)
            return vim.fs.find({ '.github/workflows/' }, { path = ctx.dirname, upward = true })[1]
          end,
        },
      },
    },
  },
}
