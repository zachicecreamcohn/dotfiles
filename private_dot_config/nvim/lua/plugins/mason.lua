return {
	-- Mason and LSP configuration
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "ts_ls", "ast_grep" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			-- Set up the LSP servers you installed with Mason
			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})
			-- ast-grep
			lspconfig.ast_grep.setup({})
			lspconfig.ts_ls.setup({})
		end,
	},
}
