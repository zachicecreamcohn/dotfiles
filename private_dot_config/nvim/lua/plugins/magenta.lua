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
					name = "claude opus 4",
					provider = "anthropic",
					model = "claude-opus-4-20250514",
					api_key_env_var = "ANTHROPIC_API_KEY",
				},
				{
					name = "claude sonnet 4",
					provider = "anthropic",
					model = "claude-sonnet-4-20250514",
					api_key_env_var = "ANTHROPIC_API_KEY",
				},
				{
					name = "gpt-4o",
					provider = "openai",
					model = "gpt-4o",
					api_key_env_var = "OPENAI_API_KEY",
					base_url = "https://api.openai.com/v1",
				},
				{
					name = "gpt-4.1",
					provider = "openai",
					model = "gpt-4.1",
					api_key_env_var = "OPENAI_API_KEY",
					base_url = "https://api.openai.com/v1",
				},
				{
					name = "o4-mini",
					provider = "openai",
					model = "o1-2024-12-17",
					api_key_env_var = "OPENAI_API_KEY",
					base_url = "https://api.openai.com/v1",
				},
				{
					name = "qwen3 14b",
					model = "qwen3:14b",
					provider = "ollama",
				},
				{
					name = "qwen2.5 7b",
					model = "qwen2.5:7b",
					provider = "ollama",
				},
				{
					name = "qwen2.5 72b",
					model = "qwen2.5:72b",
					provider = "ollama",
				},
				{
					name = "deepseek-r1:8b",
					model = "okamototk/deepseek-r1:8b",
					provider = "ollama",
				},
				{
					name = "llama3.1 8b",
					model = "llama3.1:8b",
					provider = "ollama",
				},
				{
					name = "qwen3 32b",
					model = "qwen3:32b",
					provider = "ollama",
				},
			},
		})
	end,
}
