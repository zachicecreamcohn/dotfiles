return {
	"vague2k/vague.nvim",
	config = function()
		require("vague").setup({
			colors = {
				-- bg = "#141415",
				bg = "#0c0c0d",
				fg = "#cdcdcd",
				floatBorder = "#878787",
				-- line = "#252530",
				line = "#121213",
				comment = "#606079",
				builtin = "#b4d4cf",
				func = "#c48282",
				string = "#e8b589",
				number = "#e0a363",
				property = "#c3c3d5",
				constant = "#aeaed1",
				parameter = "#bb9dbd",
				visual = "#1c1c1d",
				error = "#d8647e",
				warning = "#f3be7c",
				hint = "#7e98e8",
				operator = "#90a0b5",
				keyword = "#6e94b2",
				type = "#9bb4bc",
				search = "#405065",
				plus = "#7fa563",
				delta = "#f3be7c",
			},
		})
	end,
}
