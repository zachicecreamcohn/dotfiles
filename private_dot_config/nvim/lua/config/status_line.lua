vim.opt.laststatus = 0
vim.opt.showtabline = 0
vim.opt.showcmd = true
vim.opt.shortmess = "IFWc"

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.opt.ruler = false
	end,
})
