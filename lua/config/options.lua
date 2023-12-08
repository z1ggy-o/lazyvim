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

-- opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
-- opt.foldmethod = 'expr'

-- inactive regions highlight for clangd17

-- local inactive_ns = vim.api.nvim_create_namespace('inactive_regions')
--
-- local inactive_regions_update = function(_, message, _, _)
--   local uri = message.textDocument.uri
--   local fname = vim.uri_to_fname(uri)
--   local ranges = message.regions
--   if #ranges == 0 and vim.fn.bufexists(fname) == 0 then
--     return
--   end
--
--   local bufnr = vim.fn.bufadd(fname)
--   if not bufnr then
--     return
--   end
--
--   vim.api.nvim_buf_clear_namespace(bufnr, inactive_ns, 0, -1)
--
--   for _, range in ipairs(ranges) do
--     local lnum = range.start.line
--     local end_lnum = range['end'].line
--
--     vim.api.nvim_buf_set_extmark(bufnr, inactive_ns, lnum, 0, {
--       line_hl_group = 'ColorColumn', -- or whatever hl group you want
--       hl_eol = true,
--       end_row = end_lnum,
--       priority = vim.highlight.priorities.treesitter - 1, -- or whatever priority
--     })
--   end
-- end
--
-- local M = {}
--
-- M.handlers = {
--   ['textDocument/inactiveRegions'] = inactive_regions_update
-- }
--
-- M.capabilities = {
--   textDocument = {
--     inactiveRegionsCapabilities = {
--       inactiveRegions = true,
--     },
--   },
-- }
--
-- return M
