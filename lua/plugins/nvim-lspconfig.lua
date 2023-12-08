return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			-- do not show diag msg with code
			diagnostics = {
				virtual_text = false,
			},
		},
	},
}
