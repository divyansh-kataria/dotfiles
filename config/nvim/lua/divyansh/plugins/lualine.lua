return {
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },

		config = function()
			local theme_map = {
				gruvbox = "gruvbox",
				["rose-pine"] = "rose-pine",
				["tokyo-night"] = "tokyonight",
				catppuccin = "auto",
				dracula = "dracula",
			}

			require("lualine").setup({
				options = {
					theme = theme_map[vim.g.theme] or "auto",
					section_separators = "",
					component_separators = "",
					globalstatus = true,
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
