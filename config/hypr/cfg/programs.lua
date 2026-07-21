-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  PROGRAMS CONFIGURATION
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

local ipc = "noctalia msg"

return {
	-- Noctalia IPC
	ipc = ipc,

	-- Core Applications
	terminal = "kitty",
	browser = "zen-browser",
	fileManager = "nautilus",
	music = "spotify-launcher",

	-- Menus & UI
	menu = ipc .. " panel-toggle launcher",
	clipboard = ipc .. " panel-toggle clipboard",
	emoji = ipc .. " panel-toggle launcher /emo",
	sessionmenu = ipc .. " panel-toggle session",
	systemmonitor = ipc .. " panel-toggle control-center system",
	settings = ipc .. " settings-toggle",
	controlcenter = ipc .. " panel-toggle control-center",
	wallpaper = ipc .. " panel-toggle wallpaper",
	lock = ipc .. " session lock",

	-- Screenshot
	screenshot_area = 'grim -g "$(slurp)" - | wl-copy && notify-send "Screenshot" "Area copied to clipboard"',
	screenshot_full = 'grim - | wl-copy && notify-send "Screenshot" "Full screen copied to clipboard"',
	screenshot_window = 'grim -g "$(hyprctl activewindow -j | jq -r \'.at[0],.at[1],.size[0],.size[1]\' | paste -sd "," -)" - | wl-copy && notify-send "Screenshot" "Window copied to clipboard"',
}
