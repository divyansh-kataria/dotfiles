-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  MISC SETTINGS
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

hl.config({
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,

		--PERFORMANCE: VFR (Variable Frame Rate)
		-- Saves GPU/Battery by only rendering when things move.
		vfr = true,

		-- Keeps mouse from "warping" weirdly during certain actions.
		animate_mouse_windowdragging = true,

		-- THE "PRO" TWEAK: Window Swallowing
		-- If you open a program from the terminal (like a photo),
		-- the terminal "swallows" itself into the program window.
		enable_swallow = true,
		swallow_regex = "^(kitty|Alacritty|com.mitchellh.ghostty)$",
	},
})
