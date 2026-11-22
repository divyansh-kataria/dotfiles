-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  LOOK AND FEEL
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

hl.config({
	general = {
		gaps_in = 4,
		gaps_out = 8,
		border_size = 1,
		col = {
			active_border = "rgba(7aa2f7ff)",
			inactive_border = "rgba(00000000)",
		},

		resize_on_border = false,
		allow_tearing = false,
	},

	decoration = {
		rounding = 16,
		rounding_power = 3,
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 24,
			render_power = 3,
			color = "rgba(00000055)",
			offset = "0 4",
		},

		blur = {
			enabled = true,
			size = 7,
			passes = 3,
			noise = 0.02,
			contrast = 1.02,
			brightness = 0.9,
			vibrancy = 0.55,
			vibrancy_darkness = 0.40,
			-- popups = true,
		},
	},
})
