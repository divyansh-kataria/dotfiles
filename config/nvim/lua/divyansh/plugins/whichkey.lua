return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",

		config = function()
			local wk = require("which-key")

			wk.setup({
				preset = "modern",
			})

			wk.add({
				{ "<leader>f", group = "Find" },
				{ "<leader>g", group = "Git" },
				{ "<leader>l", group = "LSP" },
				{ "<leader>c", group = "Code" },
			})
		end,
	},
}
