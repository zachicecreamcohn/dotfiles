vim.opt.laststatus = 0
vim.opt.showtabline = 0
vim.opt.showcmd = true
vim.opt.shortmess = "laIFc"
vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.opt.ruler = false
	end,
})
