-- These are from before switching to neovide and redoing my config. Keeping for now in case I want to use tmux stuff outside of neovide (like in alacritty)
function _G.attach_tmux_session()
	-- Check if the session exists, and if not, create one
	vim.cmd("terminal tmux has-session -t my-session 2>/dev/null || tmux new-session -s my-session -d")

	-- Open a terminal and attach to the tmux session
	vim.cmd("terminal tmux attach-session -t my-session")
end
