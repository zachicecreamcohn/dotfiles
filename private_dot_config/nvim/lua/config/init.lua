-- set llvm path to hombrew version
vim.fn.setenv("CC", "/opt/homebrew/opt/llvm/bin/clang")
vim.fn.setenv("CXX", "/opt/homebrew/opt/llvm/bin/clang++")
vim.fn.setenv("SDKROOT", vim.fn.systemlist("xcrun --show-sdk-path")[1])
-- If needed for includes:
vim.fn.setenv("CFLAGS", "-isysroot " .. vim.fn.getenv("SDKROOT"))
vim.fn.setenv("CXXFLAGS", "-isysroot " .. vim.fn.getenv("SDKROOT"))

vim.g.mapleader = " "

-- enable cursorline
vim.o.cursorline = true

-- Unmount any sshfs mounts when entering neovim
vim.api.nvim_create_autocmd("VimEnter", {
	command = "silent !umount ~/.sshfs/*",
})

-- Add a command to jump directly to nvim config direcotry
vim.cmd("command! NvimConfig :cd ~/.config/nvim | e ./")

-- add a command to the escape key so that it kills last find highlight
vim.api.nvim_set_keymap("n", "<Esc>", ":noh<CR>", { noremap = true, silent = true })

vim.g.python3_host_prog = "/usr/bin/python3"

-- enable inlay hints
vim.lsp.inlay_hint.enable()

vim.o.foldmethod = "indent"
vim.o.foldlevelstart = 99

-- start with copilot disabled
vim.cmd(":Copilot disable")

-- make nvim transparent
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })

-- make snacks picker titles transparent, too
vim.api.nvim_set_hl(0, "SnacksPickerTitle", { bg = "none", fg = "#cdcdcd", bold = true })
vim.api.nvim_set_hl(0, "SnacksPickerBoxTitle", { bg = "none", fg = "#cdcdcd", bold = true })
