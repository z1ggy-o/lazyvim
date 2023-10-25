-- Should learn more about this plugin

return {
  -- enable git blame info by default
  {
    "lewis6991/gitsigns.nvim",
    opts = {
			current_line_blame = true,
    },
    keys = {
			{ "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", desc = "reset hunk" },
			{ "<leader>gj", "<cmd>Gitsigns next_hunk<cr>", desc = "next hunk" },
			{ "<leader>gk", "<cmd>Gitsigns prev_hunk<cr>", desc = "previous hunk" },
		},

  },
}
