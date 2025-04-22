return {
	"cbochs/grapple.nvim",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons", lazy = true },
	},
	opts = {
		scope = "git", -- also try out "git_branch"
	},
	event = { "BufReadPost", "BufNewFile" },
	cmd = "Grapple",
	keys = {
		{ "<leader>gm", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
		{ "<leader>gM", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
		{ "<leader>n", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
		{ "<leader>p", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },
		{ "<leader>g1", "<cmd>Grapple select index=1<cr>", desc = "Grapple toggle index 1" },
		{ "<leader>g2", "<cmd>Grapple select index=2<cr>", desc = "Grapple toggle index 2" },
		{ "<leader>g3", "<cmd>Grapple select index=3<cr>", desc = "Grapple toggle index 3" },
		{ "<leader>g4", "<cmd>Grapple select index=4<cr>", desc = "Grapple toggle index 4" },
		{ "<leader>g5", "<cmd>Grapple select index=5<cr>", desc = "Grapple toggle index 5" },
	},
}
