return {
	"zachicecreamcohn/workspace.nvim",
	branch = "add-project-deletion",
	dependencies = { "nvim-telescope/telescope.nvim" },
	-- dir = "~/.config/nvim/lua/workspace-new",
	-- name = "workspace",
	config = function()
		local workspace = require("workspace")

		workspace.setup({
			workspaces = {
				{ name = "personal-projects", path = "~/projects/personal", keymap = { "<leader>t1" } },
				{ name = "classes", path = "~/projects/classes", keymap = { "<leader>t2" } },
				{ name = "330TA", path = "~/projects/330TA", keymap = { "<leader>t3" } },
				{ name = "studlife", path = "~/projects/studlife", keymap = { "<leader>t4" } },
			},
			tmux_session_name_generator = function(project_name, workspace_name)
				return project_name .. "_" .. workspace_name
			end,
		})

		-- Add the keymap for `workspace.tmux_sessions`
		vim.keymap.set("n", "<leader>tm", workspace.tmux_sessions)
	end,
}
