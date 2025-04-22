return {
	"nvim-tree/nvim-web-devicons",
	config = function()
		require("nvim-web-devicons").setup({
			-- Optional configurations can go here
			default = true, -- set to true if you want icons for unknown filetypes
		})
	end,
}
