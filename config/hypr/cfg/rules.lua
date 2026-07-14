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

-- Opacity Rule
hl.window_rule({
	match = {
		class = [[^(org\.gnome\..*|org\.cachyos\..*|dev.noctalia.Noctalia|localsend|thunderbird|org\.qbittorrent\.qBittorrent|btrfs-assistant|io\.ente\.auth|org\.pwmt\.zathura|steam|Spotify|discord)$]],
	},
	opacity = "0.88",
})

-- Mazimized Apps Rule
hl.window_rule({
	match = { class = [[^(firefox|librewolf|zen.*|brave-browser|brave-origin|helium|vlc|com\.stremio\.stremio)$]] },
	scrolling_width = 1.0,
})

-- Maximized with Blur
hl.window_rule({
	match = { class = "^(code|codium|obsidian)$" },
	scrolling_width = 1.0,
	opacity = 0.88,
})

-- Floating with Blur
hl.window_rule({
	match = { class = [[^(org\.pulseaudio\.pavucontrol|com\.rafaelmardojai\.Blanket|xdg-desktop-portal-gtk)$]] },
	float = true,
	center = true,
	opacity = "0.88",
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
	match = { namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd)$" },
	no_anim = true,
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})
