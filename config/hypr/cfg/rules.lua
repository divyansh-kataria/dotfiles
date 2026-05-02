-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  WINDOW & WORKSPACE RULES
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- 1. SYSTEM ESSENTIALS
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

-- 2. THE RICE (Opacity & Blur)
hl.window_rule({
	name = "rice-opacity",
	match = {
		class = [[^org\.gnome\..*|org\.cachyos\..*|localsend|thunderbird|obsidian|org\.qbittorrent\.qBittorrent|btrfs-assistant|io\.ente\.auth|org\.pwmt\.zathura|code|steam|Spotify|discord]],
	},
	opacity = "0.88 0.88",
})

-- 3. FLOATING & MEDIA
hl.window_rule({
	name = "floating-utils",
	match = { class = "org.pulseaudio.pavucontrol|com.rafaelmardojai.Blanket|xdg-desktop-portal-gtk" },
	float = true,
	center = true,
})

hl.window_rule({
	name = "Picture-in-Picture",
	match = { title = "^([Pp]icture[-s]?[Ii]n[-s]?[Pp]icture)(.*)$" },
	float = true,
	pin = true,
	opacity = "1.0 1.0",
})

-- 4. LAYER RULES
--hl.layer_rule({
--	name = "noctalia-shell-blur",
--	match = { namespace = "^noctalia-.*$" },
--	blur = true,
--	ignorezero = true,
--})
