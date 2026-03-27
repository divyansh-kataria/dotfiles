return {
	{
		"lewis6991/gitsigns.nvim",
		event = "BufRead",

		config = function()
			local gs = require("gitsigns")

			gs.setup()

			-- 🔥 Git keymaps (safe here)
			vim.keymap.set("n", "<leader>gp", gs.preview_hunk, { desc = "Preview hunk" })
			vim.keymap.set("n", "<leader>gb", gs.blame_line, { desc = "Blame line" })
			vim.keymap.set("n", "<leader>gd", gs.diffthis, { desc = "Diff this file" })
		end,
	},
}
