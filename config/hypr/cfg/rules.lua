-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  WINDOW & WORKSPACE RULES
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- System Essentials
hl.window_rule({
	name = "suppress-maximize",
	match = { class = ".*" },
	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

hl.window_rule({
	name = "hyprland-run",
	match = { class = "hyprland-run" },
	move = "20 monitor_h-120",
	float = true,
})

-- Mazimized Apps Rule
hl.window_rule({
	match = {
		class = [[^(firefox|librewolf|zen.*|brave-browser|brave-origin|helium|org.qbittorrent.qBittorrent|vlc|com\.stremio\.stremio)$]],
	},
	scrolling_width = 1.0,
})

-- Maximized with Blur
hl.window_rule({
	match = { class = "^(code|codium|spotify|obsidian)$" },
	scrolling_width = 1.0,
	opacity = 0.88,
})

-- Floating Apps
hl.window_rule({
	match = { class = [[^(org\.pulseaudio\.pavucontrol|xdg-desktop-portal-gtk)$]] },
	float = true,
	center = true,
})

-- PiP floating rule
hl.window_rule({
	match = { title = "^([Pp]icture[-s]?[Ii]n[-s]?[Pp]icture)(.*)$" },
	float = true,
	pin = true,
	opacity = "1.0",
})

-- Layer Rules
hl.layer_rule({
	match = { namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$" },
	no_anim = true,
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})

-- Persistent Workspaces
hl.workspace_rule({ workspace = "1", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "eDP-1", persistent = true })
