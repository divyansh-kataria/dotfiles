-- Theme
return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		lazy = false,

		config = function()
			require("gruvbox").setup({
				contrast = "hard",
				transparent_mode = true,
			})

			vim.cmd.colorscheme("gruvbox")
		end,
	},

	-- Notifications
	{
		"rcarriga/nvim-notify",
		lazy = false,
		config = function()
			vim.api.nvim_set_hl(0, "NotifyBackground", {
				bg = "#1d2021", -- Gruvbox hard bg
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
