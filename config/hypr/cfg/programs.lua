-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  PROGRAMS CONFIGURATION
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

local ipc = "qs -c noctalia-shell ipc call"

return {
	-- Noctalia IPC
	ipc = ipc,

	-- Core Applications
	terminal = "kitty",
	browser = "brave",
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
	lock = ipc .. " lockScreen lock",

	-- Screenshot
	screenshot_area = 'grim -g "$(slurp)" - | wl-copy && notify-send "Screenshot" "Area copied to clipboard"',
	screenshot_full = 'grim - | wl-copy && notify-send "Screenshot" "Full screen copied to clipboard"',
	screenshot_window = 'grim -g "$(hyprctl activewindow -j | jq -r \'.at[0],.at[1],.size[0],.size[1]\' | paste -sd "," -)" - | wl-copy && notify-send "Screenshot" "Window copied to clipboard"',
}
