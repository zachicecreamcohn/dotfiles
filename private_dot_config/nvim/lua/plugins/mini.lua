return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		require("mini.ai").setup()
		require("mini.pairs").setup()
		require("mini.operators").setup()
	end,
}
