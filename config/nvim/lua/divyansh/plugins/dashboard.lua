return {
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			-- Logo
			dashboard.section.header.val = {
				"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
				"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
				"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
				"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
				"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
				"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
			}

			-- Buttons
			dashboard.section.buttons.val = {
				dashboard.button("f", "󰱼  Find file", "<cmd>Telescope find_files<cr>"),
				dashboard.button("r", "󱋡  Recent files", "<cmd>Telescope oldfiles<cr>"),
				dashboard.button("g", "󰺮  Live grep", "<cmd>Telescope live_grep<cr>"),
				dashboard.button("e", "󰝒  New file", "<cmd>ene<cr>"),
				dashboard.button("q", "󰗼  Quit", "<cmd>qa<cr>"),
			}

			-- Footer
			local stats = require("lazy").stats()

			dashboard.section.footer.val = string.format("󰄛 %d/%d plugins loaded", stats.loaded, stats.count)

			dashboard.config.layout = {
				{ type = "padding", val = 3 },
				dashboard.section.header,
				{ type = "padding", val = 2 },
				dashboard.section.buttons,
				{ type = "padding", val = 2 },
				dashboard.section.footer,
			}

			alpha.setup(dashboard.config)
		end,
	},
}
