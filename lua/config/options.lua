-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.list = true -- Show invisible chars
-- vim.o.listchars = "tab:⊢·,trail:␠,nbsp:⎵" -- same effect with the following line
opt.listchars = { tab = "⊢·", trail = "␠", nbsp = "⎵" }

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false -- Use tab by default, the Linux style (this is not work, I don't know why. maybe overwritten by the default c ftplugin?)

opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
opt.foldmethod = 'expr'
