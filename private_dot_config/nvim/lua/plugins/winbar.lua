return {
	"Ramilito/winbar.nvim",
	event = "VimEnter", -- Alternatively, BufReadPre if we don't care about the empty file when starting with 'nvim'
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("winbar").setup({
			-- your configuration comes here, for example:
			background_color = "#0c0c0d",
			icons = true,
			diagnostics = true,
			buf_modified = true,
			buf_modified_symbol = "●",
			dim_inactive = {
				enabled = true,
				highlight = "WinBarNC",
				icons = true, -- whether to dim the icons
				name = true, -- whether to dim the name
			},
			exclude_if = function()
				return vim.w.magenta == true
			end,

			filetype_exclude = {
				"k8s_*",
				"snacks_*",
				"NeogitStatus",
				"NvimTree",
				"Outline",
				"TelescopePrompt",
				"Trouble",
				"aerial",
				"alpha",
				"dap-repl",
				"dashboard",
				"help",
				"lir",
				"neo-tree",
				"packer",
				"prompt",
				"scratch",
				"spectre_panel",
				"startify",
				"toggleterm",
				"trouble",
			},
		})
	end,
}
