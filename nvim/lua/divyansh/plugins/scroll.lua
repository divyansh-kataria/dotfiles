return {
	{
		"karb94/neoscroll.nvim",
		event = "WinScrolled",

		config = function()
			local neoscroll = require("neoscroll")

			neoscroll.setup({
				easing_function = "quadratic",
			})

			-- 🔥 map scrolling keys
			local keymap = {
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

			for key, func in pairs(keymap) do
				vim.keymap.set({ "n", "v", "x" }, key, func)
			end
		end,
	},
}
