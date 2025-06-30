return {
  'oclay1st/gradle.nvim',
  cmd = { 'Gradle', 'GradleExec', 'GradleInit' },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
  },
  opts = {
    gradle_executable = './gradlew',
  },
  keys = { { '<leader>G', '<cmd>Gradle<cr>', desc = 'Gradle' } },
}
