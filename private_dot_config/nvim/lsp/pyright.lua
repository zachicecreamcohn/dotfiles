return {
	cmd = {
		"pyright-langserver",
		"--stdio",
	},
	filetypes = {
		"python",
	},
	root_markers = {
		".git",
		"Pipfile",
		"pyproject.toml",
		"pyrightconfig.json",
		"requirements.txt",
		"setup.cfg",
		"setup.py",
	},
	-- https://microsoft.github.io/pyright/#/settings?id=pyright-settings
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
				diagnosticMode = "openFilesOnly",
				typeCheckingMode = "standard",
			},
			inlayHints = {
				functionReturnTypes = true,
				variableTypes = true,
				parameterTypes = true,
			},
		},
	},

	on_attach = function(client, bufnr)
		if client.server_capabilities.inlayHintProvider then
			vim.lsp.inlay_hint(bufnr, true)
		end
	end,

	single_file_support = true,
}
