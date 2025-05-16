local function update_tmux_pwd()
	local pwd = vim.fn.getcwd()
	pwd = pwd:gsub("'", "'\\''")
	os.execute("tmux set-environment NVIM_PWD '" .. pwd .. "' && tmux refresh-client -S")
end

vim.api.nvim_create_autocmd("DirChanged", {
	callback = update_tmux_pwd,
})

update_tmux_pwd()

vim.opt.laststatus = 0
vim.opt.cmdheight = 0
vim.opt.showtabline = 0
