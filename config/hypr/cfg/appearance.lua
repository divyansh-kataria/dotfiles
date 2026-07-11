-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  LOOK AND FEEL
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

hl.config({
	general = {
		gaps_in = 6,
		gaps_out = 10,
		border_size = 1,
		col = {
			active_border = "rgba(bb9af7ff)",
			inactive_border = "rgba(44475a88)",
		},

		resize_on_border = false,
		allow_tearing = false,
	},

	decoration = {
		rounding = 15,
		rounding_power = 7,
		active_opacity = 1.0,
		inactive_opacity = 0.88,

		shadow = {
			enabled = true,
			range = 2,
			render_power = 3,
			color = "rgba(bb9af744)",
		},

		blur = {
			enabled = true,
			size = 6,
			passes = 3,
			vibrancy = 0.1696,
			popups = false,
		},
	},
})
