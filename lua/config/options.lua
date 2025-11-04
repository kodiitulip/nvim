-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mkdp_preview_options = {
  disable_sync_scroll = 1,
}
vim.g.mkdp_markdown_css = vim.fn.expand("~/.config/nvim/lua/config/github-markdown.css")
vim.g.mkdp_auto_close = 0

vim.opt.clipboard = "unnamedplus"
