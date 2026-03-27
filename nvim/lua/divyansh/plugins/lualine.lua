return {
	{
		"nvim-lualine/lualine.nvim",
		lazy = false, -- UI plugin → load immediately
		dependencies = { "nvim-tree/nvim-web-devicons" },

		config = function()
			local theme = require("catppuccin.utils.lualine")("mocha")

			require("lualine").setup({
				options = {
					theme = theme,
					section_separators = "",
					component_separators = "",
					globalstatus = true, -- one statusline for all windows
				},

				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff" },
					lualine_c = { "filename" },

					lualine_x = { "diagnostics" },
					lualine_y = { "filetype" },
					lualine_z = { "location" },
				},
			})
		end,
	},
}
