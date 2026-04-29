-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  WINDOW & WORKSPACE RULES
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- 1. SYSTEM ESSENTIALS
hl.windowrule({
	name = "suppress-maximize",
	match = { class = ".*" },
	suppress_event = "maximize",
})

hl.windowrule({
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

hl.windowrule({
	name = "hyprland-run",
	match = { class = "hyprland-run" },
	move = "20 monitor_h-120",
	float = true,
})

-- 2. THE RICE (Opacity & Blur)
hl.windowrule({
	name = "rice-opacity",
	match = {
		class = [[^org\.gnome\..*|org\.cachyos\..*|localsend|thunderbird|obsidian|org\.qbittorrent\.qBittorrent|btrfs-assistant|io\.ente\.auth|org\.pwmt\.zathura|code|steam|Spotify|discord]],
	},
	opacity = "0.88 0.88",
})

-- 3. FLOATING & MEDIA
hl.windowrule({
	name = "floating-utils",
	match = { class = "org.pulseaudio.pavucontrol|com.rafaelmardojai.Blanket|xdg-desktop-portal-gtk" },
	float = true,
	center = true,
})

hl.windowrule({
	name = "Picture-in-Picture",
	match = { title = "^([Pp]icture[-s]?[Ii]n[-s]?[Pp]icture)(.*)$" },
	float = true,
	pin = true,
	opacity = "1.0 1.0",
})

-- 4. LAYER RULES
hl.layerrule({
	name = "noctalia-shell-blur",
	match = { namespace = "^noctalia-.*$" },
	blur = true,
	ignorezero = true,
})
