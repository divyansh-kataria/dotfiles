-- Theme
return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,

		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,

				integrations = {
					telescope = true,
					cmp = true,
					gitsigns = true,
					which_key = true,
					lsp_trouble = true,
				},
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},

	-- Notifications
	{
		"rcarriga/nvim-notify",
		lazy = false,
		config = function()
			vim.api.nvim_set_hl(0, "NotifyBackground", {
				bg = "#1e1e2e", -- Catppuccin base
			})

			local notify = require("notify")

			notify.setup({
				background_colour = "NotifyBackground",
			})
			vim.notify = notify
		end,
	},

	-- ✨ UI enhancement
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},

		config = function()
			require("noice").setup({
				lsp = {
					hover = { enabled = true },
					signature = { enabled = true },
				},

				presets = {
					command_palette = true,
					long_message_to_split = true,
				},
			})
		end,
	},
}
