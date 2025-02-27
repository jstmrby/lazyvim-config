-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = ""
vim.opt.colorcolumn = "80,120"

vim.opt.scrolloff = 8

vim.g.snacks_animate = false

vim.g.root_spec = { "cwd", "lsp", { ".git", "lua" } }

-- vim.lsp.set_log_level("debug")
