vim.filetype.add({
  extension = {
    mcfunction = 'mcfunction',
    mcdoc = 'mcdoc',
    bolt = 'bolt',
  },
})

-- bootstrap lazy.nvim, LazyVim and your plugins
require('config.lazy')

local dap = require('dap')
dap.adapters.godot = {
  type = 'server',
  host = '127.0.0.1',
  port = 6006,
}
dap.configurations.gdscript = {
  {
    type = 'godot',
    request = 'launch',
    name = 'Launch scene',
    project = '${workspaceFolder}',
  },
}

local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
---@diagnostic disable-next-line: inject-field
parser_config.mcfunction = {
  install_info = {
    url = '~/Projects/TSGrammar/tree-sitter-mcfunction/',
    files = { 'src/parser.c' },
    generate_requires_npm = true,
    requires_generate_from_grammar = true,
  },
  filetype = 'mcfunction',
}
