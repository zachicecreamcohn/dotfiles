return {
	"zachicecreamcohn/tmux-oil.nvim",
	dev = true,
	lazy = false,
	config = function()
		require("tmux-oil").setup()
	end,
}
