-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  KEYBINDINGS
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

local mod = "SUPER"

-- 1. APPS & ESSENTIALS
hl.bind(mod, "Return", "exec", terminal)
hl.bind(mod, "Q", "killactive")
hl.bind(mod, "E", "exec", fileManager)
hl.bind(mod, "Space", "exec", menu)
hl.bind(mod, "V", "exec", clipboard)
hl.bind(mod, "period", "exec", emoji)
hl.bind(mod, "B", "exec", browser)
hl.bind(mod, "M", "exec", music)
hl.bind(mod, "I", "exec", settings)
hl.bind(mod .. " ALT", "L", "exec", lock)
hl.bind(mod .. " ALT", "Q", "exec", sessionmenu)
hl.bind(mod .. " SHIFT", "M", "exec", systemmonitor)
hl.bind(mod .. " SHIFT", "N", "exec", controlcenter)

-- 2. LAYOUT & WINDOW CONTROL
hl.bind(mod, "F", "fullscreen", "1")
hl.bind(mod .. " SHIFT", "Space", "togglefloating")
hl.bind(mod, "C", "centerwindow")
hl.bind(mod, "P", "pseudo")
hl.bind(mod .. " SHIFT", "W", "layoutmsg", "togglesplit")

-- 3. FOCUS & MOVEMENT
local directions = { h = "l", l = "r", k = "u", j = "d", left = "l", right = "r", up = "u", down = "d" }
for key, dir in pairs(directions) do
	hl.bind(mod, key, "movefocus", dir)
	hl.bind(mod .. " SHIFT", key, "movewindow", dir)
end

-- 4. WORKSPACES
for i = 1, 10 do
	local key = tostring(i % 10)
	hl.bind(mod, key, "workspace", tostring(i))
	hl.bind(mod .. " SHIFT", key, "movetoworkspace", tostring(i))
end

-- 5. SPECIAL WORKSPACES
hl.bind(mod, "TAB", "workspace", "previous")
hl.bind(mod .. " SHIFT", "TAB", "workspace", "next")
hl.bind(mod, "S", "togglespecialworkspace", "magic")
hl.bind(mod .. " SHIFT", "S", "movetoworkspace", "special:magic")

-- 6. RESIZING
hl.bind(mod, "minus", "resizeactive", "-40 0", { repeat_flag = true })
hl.bind(mod, "equal", "resizeactive", "40 0", { repeat_flag = true })
hl.bind(mod .. " SHIFT", "minus", "resizeactive", "0 -40", { repeat_flag = true })
hl.bind(mod .. " SHIFT", "equal", "resizeactive", "0 40", { repeat_flag = true })

-- 7. MONITOR CONTROL
hl.bind(mod .. " ALT", "h", "focusmonitor", "l")
hl.bind(mod .. " ALT", "l", "focusmonitor", "r")
hl.bind(mod .. " ALT SHIFT", "h", "movewindow", "mon:l")
hl.bind(mod .. " ALT SHIFT", "l", "movewindow", "mon:r")

-- 8. MULTIMEDIA (Using the 'ipc' variable from programs.lua)
hl.bind("", "XF86AudioRaiseVolume", "exec", ipc .. " volume increase", { locked = true, repeat_flag = true })
hl.bind("", "XF86AudioLowerVolume", "exec", ipc .. " volume decrease", { locked = true, repeat_flag = true })
hl.bind("", "XF86MonBrightnessUp", "exec", ipc .. " brightness increase", { locked = true, repeat_flag = true })
hl.bind("", "XF86MonBrightnessDown", "exec", ipc .. " brightness decrease", { locked = true, repeat_flag = true })

hl.bind("", "XF86AudioMute", "exec", ipc .. " volume muteOutput", { locked = true })
hl.bind("", "XF86AudioMicMute", "exec", ipc .. " volume muteInput", { locked = true })
hl.bind("", "XF86AudioNext", "exec", ipc .. " media next", { locked = true })
hl.bind("", "XF86AudioPrev", "exec", ipc .. " media previous", { locked = true })
hl.bind("", "XF86AudioPause", "exec", ipc .. " media playPause", { locked = true })
hl.bind("", "XF86AudioPlay", "exec", ipc .. " media playPause", { locked = true })

-- 9. SCREENSHOTS
hl.bind("", "Print", "exec", screenshot_area)
hl.bind("SHIFT", "Print", "exec", screenshot_full)

-- 10. MOUSE BINDS
hl.bind(mod, "mouse:272", "movewindow", nil, { mouse = true })
hl.bind(mod, "mouse:273", "resizewindow", nil, { mouse = true })
hl.bind(mod, "mouse_down", "workspace", "e+1")
hl.bind(mod, "mouse_up", "workspace", "e-1")
