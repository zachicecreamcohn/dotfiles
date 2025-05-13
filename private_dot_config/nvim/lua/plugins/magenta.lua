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
					base_url = "https://api.openai.com/v1",
				},
				{
					name = "qwen3:1.7b",
					provider = "openai",
					model = "qwen3:1.7b",
					api_key_env_var = "OLLAMA_API_KEY",
					base_url = "http://localhost:11434/v1",
				},
				{
					name = "qwen3 14b",
					provider = "openai",
					model = "qwen3:14b",
					api_key_env_var = "OLLAMA_API_KEY",
					base_url = "http://localhost:11434/v1",
				},
				{
					name = "qwen3 30b",
					provider = "openai",
					model = "qwen3:30b",
					api_key_env_var = "OLLAMA_API_KEY",
					base_url = "http://localhost:11434/v1",
				},
				{
					name = "gemini-2.0-flash",
					provider = "openai",
					model = "gemini-2.0-flash",
					api_key_env_var = "GEMINI_API_KEY",
					base_url = "https://generativelanguage.googleapis.com/v1beta/openai/",
				},
			},
			hideThinking = true,
		})
	end,
}
