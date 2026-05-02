-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  INPUT & GESTURES
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

hl.config({
	input = {
		kb_layout = "us",
		numlock_by_default = true,

		-- 1. MOUSE LOGIC
		follow_mouse = 1,
		sensitivity = 0,
		accel_profile = "flat",

		-- 2. TOUCHPAD (Mac-Style)
		touchpad = {
			natural_scroll = true,
			tap_to_click = true,
			clickfinger_behavior = true, -- 2 fingers for right click
			scroll_factor = 1.0,
		},
	},

	-- 3. THE "GODLY" GESTURES
	--gestures = {
	--workspace_swipe = true,
	--workspace_swipe_fingers = 3,
	--workspace_swipe_distance = 300,
	--workspace_swipe_invert = true, -- Set to false if it feels "backwards" to you
	--workspace_swipe_min_speed_to_force = 30,
	--workspace_swipe_cancel_ratio = 0.5,
	--},
})
