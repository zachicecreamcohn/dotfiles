_G.vim = vim -- for LSP to prevent errors

vim.api.nvim_set_keymap("n", "gD", "<cmd>tab split | lua vim.lsp.buf.definition()<CR>", {})

-- shortcuts for switching focus between panes
vim.api.nvim_set_keymap("n", "<D-h>", "<C-w>h", { noremap = true, silent = true, desc = "Focus left pane" })

vim.api.nvim_set_keymap("n", "<D-j>", "<C-w>j", { noremap = true, silent = true, desc = "Focus down pane" })
vim.api.nvim_set_keymap("n", "<D-k>", "<C-w>k", { noremap = true, silent = true, desc = "Focus up pane" })
vim.api.nvim_set_keymap("n", "<D-l>", "<C-w>l", { noremap = true, silent = true, desc = "Focus right pane" })

-- shortcuts to switch tabs
vim.api.nvim_set_keymap("n", "<D-t>", ":tabnew<CR>", { noremap = true, silent = true, desc = "New tab" })
vim.api.nvim_set_keymap("n", "<D-]>", ":tabnext<CR>", { noremap = true, silent = true, desc = "Next tab" })
vim.api.nvim_set_keymap("n", "<D-[>", ":tabprevious<CR>", { noremap = true, silent = true, desc = "Previous tab" })
vim.api.nvim_set_keymap("n", "<D-w>", ":close<CR>", { noremap = true, silent = true, desc = "Close" })

--- For alacritty, I need special rules that use control instead of command.

vim.api.nvim_set_keymap("n", "<C-S-h>", "<C-w>h", { noremap = true, silent = true, desc = "Focus left pane" })
vim.api.nvim_set_keymap("n", "<C-S-j>", "<C-w>j", { noremap = true, silent = true, desc = "Focus down pane" })
vim.api.nvim_set_keymap("n", "<C-S-k>", "<C-w>k", { noremap = true, silent = true, desc = "Focus up pane" })
vim.api.nvim_set_keymap("n", "<C-S-l>", "<C-w>l", { noremap = true, silent = true, desc = "Focus right pane" })

-- special new tab command is necessary because alacritty has its own tabs which are mapped to Cmd-t
vim.api.nvim_set_keymap("n", "<C-t>", ":tabnew<CR>", { noremap = true, silent = true, desc = "New tab" })
vim.api.nvim_set_keymap("n", "<C-w>", ":close<CR>", { noremap = true, silent = true, desc = "Close" })

-- pane split commands
vim.cmd("command! HS split")
vim.cmd("command! VS vsplit")
vim.cmd("command! CLS close")

-- Set a command for more easily leaving term mode
vim.keymap.set("t", "<Esc>t", "<C-\\><C-n>", { noremap = true, silent = true, desc = "Leave terminal mode" })

-- see diagnostics for the current line in case it gets cut off
vim.keymap.set(
	"n",
	"<space>e",
	":lua vim.diagnostic.open_float(0, {scope='line'})<CR>",
	{ noremap = true, silent = true, desc = "Show line diagnostics" }
)

-- jump back to previous buffer
vim.api.nvim_set_keymap("n", "gp", "<C-^>", { noremap = true, silent = true, desc = "Go to previous buffer" })

vim.api.nvim_set_keymap(
	"n",
	"g.",
	":e ./<CR>",
	{ noremap = true, silent = false, desc = "Open file browser in current dir" }
)

-- use lsp for gf
vim.keymap.set("n", "gf", vim.lsp.buf.definition, { noremap = true, silent = true })
