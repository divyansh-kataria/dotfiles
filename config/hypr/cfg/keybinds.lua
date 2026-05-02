-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  KEYBINDINGS
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

local mod = "SUPER"

-- 1. APPS & ESSENTIALS
hl.bind(mod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mod .. " + Q", hl.dsp.window.close())
hl.bind(mod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mod .. " + Space", hl.dsp.exec_cmd(menu))
hl.bind(mod .. " + V", hl.dsp.exec_cmd(clipboard))
hl.bind(mod .. " + period", hl.dsp.exec_cmd(emoji))
hl.bind(mod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mod .. " + M", hl.dsp.exec_cmd(music))
hl.bind(mod .. " + I", hl.dsp.exec_cmd(settings))
hl.bind(mod .. " + ALT + L", hl.dsp.exec_cmd(lock))
hl.bind(mod .. " + ALT + Q", hl.dsp.exec_cmd(sessionmenu))
hl.bind(mod .. " + SHIFT + M", hl.dsp.exec_cmd(systemmonitor))
hl.bind(mod .. " + SHIFT + N", hl.dsp.exec_cmd(controlcenter))

-- 2. LAYOUT & WINDOW CONTROL
hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ mode = 1 }))
hl.bind(mod .. " + SHIFT + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + P", hl.dsp.window.pseudo())
hl.bind(mod .. " + SHIFT + W", hl.dsp.layout("togglesplit"))

-- 3. FOCUS & MOVEMENT
local directions = {
	h = "l",
	l = "r",
	k = "u",
	j = "d",
	left = "l",
	right = "r",
	up = "u",
	down = "d",
}

for key, dir in pairs(directions) do
	hl.bind(mod .. " + " .. key, hl.dsp.focus({ direction = dir }))
	hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ direction = dir }))
end

-- 4. WORKSPACES
for i = 1, 10 do
	local key = tostring(i % 10)
	hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- 5. SPECIAL WORKSPACES
hl.bind(mod .. " + TAB", hl.dsp.focus({ workspace = "previous" }))
hl.bind(mod .. " + SHIFT + TAB", hl.dsp.focus({ workspace = "next" }))
hl.bind(mod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- 6. RESIZING
--hl.bind(mod .. " + minus", hl.dsp.window.resize({ x = -40, y = 0 }), { repeating = true })
--hl.bind(mod .. " + equal", hl.dsp.window.resize({ x = 40, y = 0 }), { repeating = true })
--hl.bind(mod .. " + SHIFT + minus", hl.dsp.window.resize({ x = 0, y = -40 }), { repeating = true })
--hl.bind(mod .. " + SHIFT + equal", hl.dsp.window.resize({ x = 0, y = 40 }), { repeating = true })

-- 7. MONITOR CONTROL
--hl.bind(mod .. " + ALT + h", hl.dsp.focus({ monitor = "l" }))
--hl.bind(mod .. " + ALT + l", hl.dsp.focus({ monitor = "r" }))
--hl.bind(mod .. " + ALT + SHIFT + h", hl.dsp.window.move({ monitor = "l" }))
--hl.bind(mod .. " + ALT + SHIFT + l", hl.dsp.window.move({ monitor = "r" }))

-- 8. MULTIMEDIA & BRIGHTNESS
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. " volume increase"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. " volume decrease"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. " volume muteOutput"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(ipc .. " volume muteInput"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(ipc .. " media next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(ipc .. " media previous"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(ipc .. " media playPause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(ipc .. " media playPause"), { locked = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. " brightness increase"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. " brightness decrease"), { locked = true, repeating = true })

-- 9. SCREENSHOTS
hl.bind("Print", hl.dsp.exec_cmd(screenshot_area))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd(screenshot_full))

-- 10. MOUSE CONTROLS
-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
