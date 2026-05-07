-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  INPUT & GESTURES
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

hl.config({
	input = {
		kb_layout = "us",
		numlock_by_default = true,

		-- Mouse
		follow_mouse = 1,
		sensitivity = 0,
		accel_profile = "flat",

		-- Touchpad
		touchpad = {
			natural_scroll = true,
			tap_to_click = true,
			clickfinger_behavior = true, -- 2 fingers for right click
			scroll_factor = 1.0,
		},
	},
})

-- Gestures
hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

-- Maximize and Fullscreen
hl.gesture({
	fingers = 3,
	direction = "up",
	action = "fullscreen",
	mode = "maximize",
})

hl.gesture({
	fingers = 3,
	direction = "down",
	action = "fullscreen",
})

-- Move and Resize
hl.gesture({
	fingers = 3,
	direction = "swipe",
	mods = "SUPER",
	action = "move",
})

hl.gesture({
	fingers = 3,
	direction = "swipe",
	mods = "ALT",
	action = "resize",
})

-- Scratchpad
hl.gesture({
	fingers = 4,
	direction = "up",
	action = "special",
	arg = "scratchpad",
})

-- Close Window
hl.gesture({
	fingers = 4,
	direction = "down",
	action = "close",
})
