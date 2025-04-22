vim.opt.undodir = "~/.config/nvim/undo/"
vim.opt.undofile = true
vim.opt.swapfile = false

local undodir = vim.fn.expand("~/.config/nvim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
	vim.fn.mkdir(undodir, "", 448) -- 448 decimal = 0700
end
