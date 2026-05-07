-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  KEYBINDINGS
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

local mod = "SUPER"
local programs = require("cfg.programs")

-- Apps & Essentials
hl.bind(mod .. " + Return", hl.dsp.exec_cmd(programs.terminal))
hl.bind(mod .. " + Q", hl.dsp.window.close())
hl.bind(mod .. " + E", hl.dsp.exec_cmd(programs.fileManager))
hl.bind(mod .. " + Space", hl.dsp.exec_cmd(programs.menu))
hl.bind(mod .. " + V", hl.dsp.exec_cmd(programs.clipboard))
hl.bind(mod .. " + period", hl.dsp.exec_cmd(programs.emoji))
hl.bind(mod .. " + B", hl.dsp.exec_cmd(programs.browser))
hl.bind(mod .. " + M", hl.dsp.exec_cmd(programs.music))
hl.bind(mod .. " + I", hl.dsp.exec_cmd(programs.settings))
hl.bind(mod .. " + ALT + L", hl.dsp.exec_cmd(programs.lock))
hl.bind(mod .. " + ALT + Q", hl.dsp.exec_cmd(programs.sessionmenu))
hl.bind(mod .. " + SHIFT + M", hl.dsp.exec_cmd(programs.systemmonitor))
hl.bind(mod .. " + SHIFT + N", hl.dsp.exec_cmd(programs.controlcenter))

-- Layout & Window Control
hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ mode = 0 }))
hl.bind(mod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = 1 }))
hl.bind(mod .. " + SHIFT + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + P", hl.dsp.window.pseudo())
hl.bind(mod .. " + W", hl.dsp.layout("togglesplit")) -- for dwindle
hl.bind(mod .. " + R", hl.dsp.layoutmsg("colresize +conf")) -- for scrolling

-- Focus & Movement
local directions = {
	h = "left",
	l = "right",
	k = "up",
	j = "down",
	left = "left",
	right = "right",
	up = "up",
	down = "down",
}

for key, dir in pairs(directions) do
	hl.bind(mod .. " + " .. key, hl.dsp.focus({ direction = dir }))
	hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ direction = dir }))
end

-- Workspaces
for i = 1, 10 do
	local key = (i % 10)
	hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mod .. " + TAB", hl.dsp.focus({ workspace = "previous" }))
-- hl.bind(mod .. " + SHIFT + TAB", hl.dsp.focus({ workspace = "r-1" }))

-- Special Workspace
hl.bind(mod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Workspaces Switching with Mouse
hl.bind(mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move and Resize window with mod + mouse
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Window Resizing with - and = keys
hl.bind(mod .. " + minus", hl.dsp.resizeactive({ x = -40, y = 0 }), { repeating = true })
hl.bind(mod .. " + equal", hl.dsp.resizeactive({ x = 40, y = 0 }), { repeating = true })
hl.bind(mod .. " + SHIFT + minus", hl.dsp.resizeactive({ x = 0, y = -40 }), { repeating = true })
hl.bind(mod .. " + SHIFT + equal", hl.dsp.resizeactive({ x = 0, y = 40 }), { repeating = true })

-- Monitor Control
hl.bind(mod .. " + ALT + h", hl.dsp.focus({ monitor = "prev" }))
hl.bind(mod .. " + ALT + l", hl.dsp.focus({ monitor = "next" }))
hl.bind(mod .. " + ALT + SHIFT + h", hl.dsp.window.move({ monitor = "prev" }))
hl.bind(mod .. " + ALT + SHIFT + l", hl.dsp.window.move({ monitor = "next" }))

hl.bind(mod .. " + ALT + left", hl.dsp.focus({ monitor = "prev" }))
hl.bind(mod .. " + ALT + right", hl.dsp.focus({ monitor = "next" }))
hl.bind(mod .. " + ALT + SHIFT + left", hl.dsp.window.move({ monitor = "prev" }))
hl.bind(mod .. " + ALT + SHIFT + right", hl.dsp.window.move({ monitor = "next" }))

-- Multimedia & Brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd(programs.ipc .. " volume increase"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd(programs.ipc .. " volume decrease"),
	{ locked = true, repeating = true }
)
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(programs.ipc .. " volume muteOutput"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(programs.ipc .. " volume muteInput"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(programs.ipc .. " media next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(programs.ipc .. " media previous"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(programs.ipc .. " media playPause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(programs.ipc .. " media playPause"), { locked = true })

hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd(programs.ipc .. " brightness increase"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd(programs.ipc .. " brightness decrease"),
	{ locked = true, repeating = true }
)

-- Screenshots
hl.bind("Print", hl.dsp.exec_cmd(programs.screenshot_area))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd(programs.screenshot_full))
hl.bind("ALT + Print", hl.dsp.exec_cmd(programs.screenshot_window))
