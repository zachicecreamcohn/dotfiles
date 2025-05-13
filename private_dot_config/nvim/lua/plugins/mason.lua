return {
	-- use built in LSP functionality for config, but use mason to install lsp servers
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
}
