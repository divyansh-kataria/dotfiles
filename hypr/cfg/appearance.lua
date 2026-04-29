-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  LOOK AND FEEL
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

hl.config({
	general = {
		gaps_in = 6,
		gaps_out = 10,
		border_size = 2,
		col = {
			active_border = "rgba(bb9af7ff)",
			inactive_border = "rgba(44475a88)",
		},

		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 20,
		rounding_power = 2,
		active_opacity = 1.0,
		inactive_opacity = 0.9,

		shadow = {
			enabled = true,
			range = 20,
			render_power = 4,
			offset = "0 4",
			color = "rgba(bb9af744)",
		},

		blur = {
			enabled = true,
			size = 6,
			passes = 2,
			vibrancy = 0.1696,
		},
	},
})
