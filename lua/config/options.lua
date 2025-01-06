-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- listen to godot host when on a godot project
local projectfile = vim.fn.getcwd() .. '/project.godot'
local pipepath = vim.fn.stdpath('cache') .. '/godot.pipe'
if vim.uv.fs_stat(projectfile) and not vim.uv.fs_stat(pipepath) then vim.fn.serverstart(pipepath) end
