-- Use local LLM for copilot functionality
-- vim.g.copilot_proxy = "http://localhost:11435"
-- vim.g.copilot_proxy_strict_ssl = false

return {
	"github/copilot.vim",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function() end,
}
