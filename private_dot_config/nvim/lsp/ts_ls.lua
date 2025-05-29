-- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/ts_ls.lua
-- https://github.com/typescript-language-server/typescript-language-server/blob/master/docs/configuration.md

return {
	cmd = {
		"typescript-language-server",
		"--stdio",
	},
	filetypes = {
		"typescript",
		"typescript.tsx",
		"typescriptreact",
		"javascript",
		"javascript.jsx",
		"javascriptreact",
	},
	root_markers = {
		".git",
		"jsconfig.json",
		"package.json",
		"tsconfig.json",
	},

	init_options = {
		hostInfo = "neovim",
		preferences = {
			includeInlayParameterNameHints = "all",
			includeInlayParameterNameHintsWhenArgumentMatchesName = false,
			includeInlayFunctionParameterTypeHints = true,
			includeInlayVariableTypeHints = true,
			includeInlayPropertyDeclarationTypeHints = true,
			includeInlayFunctionLikeReturnTypeHints = true,
			includeInlayEnumMemberValueHints = true,
		},
	},
	on_attach = function(client, bufnr)
		if client.server_capabilities.inlayHintProvider then
			vim.lsp.inlay_hint(bufnr, true)

			-- Add keybinding to toggle inlay hints
		end
	end,
	single_file_support = true,
}
