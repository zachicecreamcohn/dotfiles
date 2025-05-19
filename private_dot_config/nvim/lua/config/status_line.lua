vim.opt.laststatus = 0
vim.opt.showtabline = 0
vim.opt.cmdheight = 0

function _G.update_tmux_pwd()
	local pwd = vim.fn.getcwd():gsub("'", "'\\''")
	os.execute("tmux set-environment NVIM_PWD '" .. pwd .. "' && tmux refresh-client -S")
end
vim.api.nvim_create_autocmd("DirChanged", { callback = _G.update_tmux_pwd })
_G.update_tmux_pwd()

vim.api.nvim_create_autocmd("RecordingEnter", {
	callback = function()
		vim.opt.cmdheight = 1
	end,
})
vim.api.nvim_create_autocmd("RecordingLeave", {
	callback = function()
		vim.opt.cmdheight = 0
	end,
})

vim.opt.showcmd = true
