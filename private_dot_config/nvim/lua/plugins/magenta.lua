return {
	"zachicecreamcohn/magenta.nvim",
	dev = true,
	lazy = false,
	build = "npm install --frozen-lockfile",
	config = function()
		require("magenta").setup({
			profiles = {
				{
					name = "claude-3-7",
					provider = "anthropic",
					model = "claude-3-7-sonnet-latest",
					api_key_env_var = "ANTHROPIC_API_KEY",
				},
				{
					name = "gpt-4o",
					provider = "openai",
					model = "gpt-4o",
					api_key_env_var = "OPENAI_API_KEY",
				},
				{
					name = "o1",
					provider = "openai",
					model = "o1",
					api_key_env_var = "OPENAI_API_KEY",
				},
				{
					name = "o3-mini",
					provider = "openai",
					model = "o3-mini",
					api_key_env_var = "OPENAI_API_KEY",
				},
				{
					name = "o4-mini",
					provider = "openai",
					model = "o4-mini",
					api_key_env_var = "OPENAI_API_KEY",
				},
				-- {
				-- 	name = "llama3.1",
				-- 	provider = "ollama",
				-- 	model = "llama3.1:latest",
				-- },
				-- {
				-- 	name = "llama3.2",
				-- 	provider = "ollama",
				-- 	model = "llama3.2:latest",
				-- },
				-- {
				-- 	name = "qwq",
				-- 	provider = "ollama",
				-- 	model = "qwq:latest",
				-- },
			},
		})
	end,
}
