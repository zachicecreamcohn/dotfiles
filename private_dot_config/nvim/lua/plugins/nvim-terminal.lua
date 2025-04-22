return {
	"s1n7ax/nvim-terminal",
	config = function()
		vim.o.hidden = true
		require("nvim-terminal").setup({
			-- Add any other options if needed
			on_open = function(term)
				vim.api.nvim_buf_set_option(term.bufnr, "modifiable", true)
				vim.api.nvim_buf_set_option(term.bufnr, "readonly", false)
			end,
		})
	end,
}
