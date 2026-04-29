-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  LAYOUT CONFIGURATION
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

hl.config({
	general = {
		-- This ensures that if only one window is open, it takes the full screen
		-- No wasted space with gaps for a single window.
		no_focus_fallback = true,
	},

	dwindle = {
		-- Basic pro settings
		pseudotile = true,
		preserve_split = true,

		-- Pro Logic:
		-- 0 = split based on mouse, 1 = always vertical, 2 = always horizontal
		force_split = 2,

		-- This makes windows "smartly" tile towards the center
		smart_split = true,
		smart_resizing = true,
	},

	master = {
		new_status = "master",
		-- Make the master area larger for productivity (60% master, 40% stack)
		mfact = 0.60,
		-- Use a "slave" stack on the right
		orientation = "right",
	},
})
