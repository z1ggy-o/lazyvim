-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local function unmap(mode, lhs, opts)
  vim.keymap.del(mode, lhs, opts)
end

unmap("n", "<leader>l")

map("i", "jk", "<ESC>") -- out of insert mode without esc or C-[

-- Files related
map("n", "<leader>fs", ":w<CR>")
unmap({ "i", "x", "n", "s" }, "<C-s>")

-- Movements
-- readlines-like movement
map("i", "<C-a>", "<Home>", { noremap = true })
map("i", "<C-e>", "<End>", { noremap = true })
map("i", "<C-b>", "<Left>", { noremap = true })
map("i", "<C-f>", "<Right>", { noremap = true })

-- Windows
--  splits
map("n", "<leader>wv", "<C-w>v")
map("n", "<leader>ws", "<C-w>s")
