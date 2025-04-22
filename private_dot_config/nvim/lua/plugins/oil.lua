return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,

	-- a function to config and set up
	config = function()
		local detail = false
		require("oil").setup({
			keymaps = {
				["gd"] = {
					desc = "Toggle file detail view",
					callback = function()
						detail = not detail
						if detail then
							require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
						else
							require("oil").set_columns({ "icon" })
						end
					end,
				},
				["<leader>p"] = "actions.preview",
				["<leader>sv"] = { "actions.select", opts = { vertical = true } },
				["<leader>sh"] = { "actions.select", opts = { horizontal = true } },
				["<leader>oh"] = { "actions.select", opts = { horizontal = true } },
				["<leader>ov"] = { "actions.select", opts = { vertical = true } },
				["<C-h"] = false,
				["<C-v>"] = false,
			},
		})
	end,
}
