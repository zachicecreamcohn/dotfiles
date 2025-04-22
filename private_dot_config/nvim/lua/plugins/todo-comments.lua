return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("todo-comments").setup()
		vim.api.nvim_set_keymap("n", "<leader>td", ":TodoTelescope<CR>", { noremap = true, silent = true })
	end,
}
