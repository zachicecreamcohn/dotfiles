return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { ".luarc.json", ".luarc.jsonc" },
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			signatureHelp = { enabled = true },
			hint = {
				enable = true,
				arrayIndex = "Enable",
				setType = true,
				paramName = "All",
				paramType = true,
			},
		},
	},
}
