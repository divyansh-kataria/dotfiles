return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",

			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
		},

		cmd = "Telescope",

		config = function()
			local telescope = require("telescope")

			telescope.setup({
				defaults = {
					layout_strategy = "flex",
					layout_config = {
						width = 0.9,
					},

					sorting_strategy = "ascending",
					path_display = { "smart" },

					file_ignore_patterns = {
						"node_modules",
						".git/",
					},
				},

				extensions = {
					fzf = {
						fuzzy = true,
						override_generic_sorter = true,
						override_file_sorter = true,
						case_mode = "smart_case",
					},
				},
			})

			telescope.load_extension("fzf")
		end,
	},
}
