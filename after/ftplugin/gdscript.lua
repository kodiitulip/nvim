local pipe = '/tmp/godot.pipe'
local is_server_running = vim.uv.fs_stat(pipe)
local tries = 1

while not is_server_running and tries < 10 do
  vim.fn.serverstart(pipe)
  tries = tries + 1
end

vim.api.nvim_echo(
  { { 'Godot pipe server running: ' .. tostring(is_server_running) }, { '\nTries: ' .. tostring(tries) } },
  false,
  {}
)
