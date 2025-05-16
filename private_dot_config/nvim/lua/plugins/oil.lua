-- return {
-- 	"stevearc/oil.nvim",
-- 	---@module 'oil'
-- 	---@type oil.SetupOpts
-- 	opts = {},
-- 	dependencies = { { "echasnovski/mini.icons", opts = {} } },
-- 	lazy = false,
--
-- 	config = function()
-- 		local detail = false
-- 		require("oil").setup({
-- 			set_cwd = false,
--
-- 			keymaps = {
-- 				["gd"] = {
-- 					desc = "Toggle file detail view",
-- 					callback = function()
-- 						detail = not detail
-- 						if detail then
-- 							require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
-- 						else
-- 							require("oil").set_columns({ "icon" })
-- 						end
-- 					end,
-- 				},
-- 				["<leader>p"] = "actions.preview",
-- 				["<leader>sv"] = { "actions.select", opts = { vertical = true } },
-- 				["<leader>sh"] = { "actions.select", opts = { horizontal = true } },
-- 				["<leader>oh"] = { "actions.select", opts = { horizontal = true } },
-- 				["<leader>ov"] = { "actions.select", opts = { vertical = true } },
-- 				["<C-h"] = false,
-- 				["<C-v>"] = false,
-- 			},
-- 		})
-- 	end,
-- }
return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			delete_to_trash = true,
			skip_confirm_for_simple_edits = true,
			view_options = {
				show_hidden = true,
				natural_order = true,
				is_always_hidden = function(name, _)
					return name == ".." or name == ".git"
				end,
			},
			win_options = {
				wrap = true,
			},
			use_default_keymaps = false,
			keymaps = {
				["<leader>h"] = { "actions.select", opts = { horizontal = true } },
				["<leader>v"] = { "actions.select", opts = { vertical = true } },
				["q"] = "actions.close",
				["g?"] = "actions.show_help",
				["<CR>"] = "actions.select",
				["<C-s>"] = { "actions.select", opts = { vertical = true } },
				["<C-t>"] = { "actions.select", opts = { tab = true } },
				["<C-p>"] = "actions.preview",
				["<leader>R"] = "actions.refresh",
				["-"] = "actions.parent",
				["_"] = "actions.open_cwd",
				["`"] = "actions.cd",
				["~"] = { "actions.cd", opts = { scope = "tab" } },
				["gs"] = "actions.change_sort",
				["gx"] = "actions.open_external",
				["g."] = "actions.toggle_hidden",
				["g\\"] = "actions.toggle_trash",
			},
		})
	end,
}
