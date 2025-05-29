return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local harpoon = require("harpoon")
		harpoon.setup({})

		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end, { desc = "Harpoon – add file" })

		for i = 1, 5 do
			local mapping = ("<leader>%d"):format(i)
			pcall(vim.keymap.del, "n", mapping)

			vim.keymap.set("n", mapping, function()
				harpoon:list():select(i)
			end, { desc = ("Harpoon – select file %d"):format(i) })
		end

		vim.keymap.set("n", "<C-p>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():next()
		end)
	end,
}
