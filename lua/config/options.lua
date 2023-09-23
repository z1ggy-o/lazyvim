-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.list = true -- Show invisible chars
-- vim.o.listchars = "tab:⊢·,trail:␠,nbsp:⎵" -- same effect with the following line
opt.listchars = { tab = "⊢·", trail = "␠", nbsp = "⎵" }
