-- Theme
return {
	{
		-- 🟤 Gruvbox (main)
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		lazy = false,
		enabled = function()
			return vim.g.theme == "gruvbox"
		end,

		config = function()
			require("gruvbox").setup({
				contrast = "hard",
				transparent_mode = true,
			})
			vim.cmd.colorscheme("gruvbox")
		end,
	},

	{
		-- 🌸 Rosé Pine (soft)
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		lazy = false,
		enabled = function()
			return vim.g.theme == "rose-pine"
		end,

		config = function()
			require("rose-pine").setup({
				disable_background = true,
			})
			vim.cmd.colorscheme("rose-pine")
		end,
	},

	{
		-- 🌌 Tokyo Night (clean)
		"folke/tokyonight.nvim",
		priority = 1000,
		lazy = false,
		enabled = function()
			return vim.g.theme == "tokyo-night"
		end,

		config = function()
			require("tokyonight").setup({
				transparent = true,
			})
			vim.cmd.colorscheme("tokyonight")
		end,
	},

	{
		-- 🧁 Catppuccin Mocha (modern)
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		enabled = function()
			return vim.g.theme == "catppuccin"
		end,

		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},

	{
		-- 🧛 Dracula (classic)
		"dracula/vim",
		name = "dracula",
		priority = 1000,
		lazy = false,
		enabled = function()
			return vim.g.theme == "dracula"
		end,

		config = function()
			vim.cmd.colorscheme("dracula")

			-- Dracula has no native transparency → minimal fix
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},

	-- Notifications
	{
		"rcarriga/nvim-notify",
		lazy = false,
		config = function()
			local hl = vim.api.nvim_get_hl(0, { name = "Normal" })
			local bg = hl.bg and string.format("#%06x", hl.bg) or "#000000"

			vim.api.nvim_set_hl(0, "NotifyBackground", {
				bg = bg,
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
