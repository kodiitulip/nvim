-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local create_autocmd = vim.api.nvim_create_autocmd

-- Minecraft data/resource pack filetypes
create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = { '*.mcfunction' },
  command = 'set filetype=mcfunction',
})

create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = { '*.mcmeta' },
  command = 'set filetype=json',
})

create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = { '*.mcdoc' },
  command = 'set filetype=mcdoc',
})

-- initializing Godot server when on a godot project
create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = { '*.gd', '*.gdshader', 'project.godot' },
  callback = function()
    local res, err = pcall(vim.fn.serverstart, '127.0.0.1:6004')
    if res then
      vim.notify('Godot server initialized!', vim.log.levels.INFO, {})
    else
      if err then vim.notify('Something went wrong: ' .. err, vim.log.levels.ERROR, {}) end
    end
  end,
})
