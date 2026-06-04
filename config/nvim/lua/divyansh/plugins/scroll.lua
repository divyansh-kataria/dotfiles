return {
	{
		"karb94/neoscroll.nvim",

		keys = {
			"<C-u>",
			"<C-d>",
			"<C-b>",
			"<C-f>",
			"<C-y>",
			"<C-e>",
		},

		opts = {
			easing_function = "quadratic",
		},

		config = function(_, opts)
			local neoscroll = require("neoscroll")

			neoscroll.setup(opts)

			local map = vim.keymap.set

			local mappings = {
				["<C-u>"] = function()
					neoscroll.ctrl_u({ duration = 150 })
				end,
				["<C-d>"] = function()
					neoscroll.ctrl_d({ duration = 150 })
				end,
				["<C-b>"] = function()
					neoscroll.ctrl_b({ duration = 200 })
				end,
				["<C-f>"] = function()
					neoscroll.ctrl_f({ duration = 200 })
				end,
				["<C-y>"] = function()
					neoscroll.scroll(-0.1, { duration = 100 })
				end,
				["<C-e>"] = function()
					neoscroll.scroll(0.1, { duration = 100 })
				end,
			}

			for key, fn in pairs(mappings) do
				map({ "n", "v", "x" }, key, fn, {
					silent = true,
					desc = "Smooth scroll",
				})
			end
		end,
	},
}
