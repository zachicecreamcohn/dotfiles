return {
	{
		"metalelf0/black-metal-theme-neovim",
		lazy = false,
		priority = 1000,
		config = function()
			require("black-metal").setup({
				theme = "bathory",
				variant = "dark",
				alt_bg = false,
				colored_docstrings = true,
				cursorline_gutter = true,
				dark_gutter = true,
				favor_treesitter_hl = false,
				plain_float = false,
				show_eob = true,
				term_colors = true,
				toggle_variant_key = nil,
				transparent = false,

				diagnostics = {
					darker = true,
					undercurl = true,
					background = true,
				},

				code_style = {
					comments = "italic",
					conditionals = "none",
					functions = "none",
					keywords = "none",
					headings = "bold",
					operators = "none",
					keyword_return = "none",
					strings = "none",
					variables = "none",
				},

				plugin = {
					lualine = { bold = true, plain = false },
					cmp = { plain = false, reverse = false },
				},

				colors = {},
				highlights = {},
			})
			require("black-metal").load()
		end,
	},
}
