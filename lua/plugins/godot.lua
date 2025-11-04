local pipe = "./godothost"

local function is_server_running()
  local serverlist = vim.fn.serverlist()
  for _, server in ipairs(serverlist) do
    if pipe == server then
      return true
    end
  end
  return false
end

function Start_godot_server()
  local root = vim.fs.dirname(vim.fs.find({ "project.godot" }, { upward = true })[1])
  if root == nil then
    return
  end
  if is_server_running() then
    return
  end
  vim.fn.serverstart(pipe)
  vim.notify("Started Server: " .. pipe, vim.log.levels.INFO, {})
end

Start_godot_server()

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gdscript = {},
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        gdscript = { "gdformat" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        gdscript = { "gdlint" },
      },
    },
  },
}
