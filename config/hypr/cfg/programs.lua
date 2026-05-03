-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  PROGRAMS CONFIGURATION
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

local ipc = "qs -c noctalia-shell ipc call"

return {
	-- Noctalia IPC
	ipc = ipc,

	-- Core Applications
	terminal = "kitty",
	browser = "firefox",
	fileManager = "nautilus",
	music = "spotify",

	-- Menus & UI
	menu = ipc .. " launcher toggle",
	clipboard = ipc .. " launcher clipboard",
	emoji = ipc .. " launcher emoji",
	sessionmenu = ipc .. " sessionMenu toggle",
	systemmonitor = ipc .. " systemMonitor toggle",
	settings = ipc .. " settings toggle",
	controlcenter = ipc .. " controlCenter toggle",

	-- Utilities
	lock = ipc .. " lockScreen lock",
	screenshot_area = 'grim -g "$(slurp)" - | wl-copy',
	screenshot_full = "grim - | wl-copy",
}
