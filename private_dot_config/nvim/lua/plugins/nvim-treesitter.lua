return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = { "typescript", "tsx" },
		sync_install = true,
		auto_install = true,
		highlight = { enable = true },
	},
}
