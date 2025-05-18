return {
	"rcarriga/nvim-notify",
	lazy = false,
	opts = {
		stages = "fade_in_slide_out",
		max_width = 100,
		top_down = false,
	},
	config = function(_, opts)
		local notify = require("notify")
		notify.setup(opts)
		vim.notify = notify
	end,
}
