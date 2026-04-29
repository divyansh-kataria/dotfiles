-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  ANIMATIONS
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- Curves
hl.curve("superSilk", {
	type = "bezier",
	points = { { 0.16, 1 }, { 0.3, 1 } },
})

hl.curve("softBounce", {
	type = "bezier",
	points = { { 0.34, 1.56 }, { 0.64, 1 } },
})

hl.curve("linear", {
	type = "bezier",
	points = { { 0, 0 }, { 1, 1 } },
})

-- Animations
hl.animation({
	leaf = "global",
	enabled = true,
	speed = 10,
	bezier = "linear",
})

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 7,
	bezier = "superSilk",
	style = "popin 85%",
})

hl.animation({
	leaf = "windowsIn",
	enabled = true,
	speed = 7,
	bezier = "softBounce",
	style = "popin 85%",
})

hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 5,
	bezier = "superSilk",
	style = "popin 80%",
})

hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 8,
	bezier = "superSilk",
	style = "slide",
})

hl.animation({
	leaf = "fadeIn",
	enabled = true,
	speed = 5,
	bezier = "linear",
})

hl.animation({
	leaf = "fadeOut",
	enabled = true,
	speed = 5,
	bezier = "linear",
})

hl.animation({
	leaf = "layers",
	enabled = true,
	speed = 6,
	bezier = "superSilk",
	style = "slide top",
})

hl.animation({
	leaf = "layersIn",
	enabled = true,
	speed = 6,
	bezier = "superSilk",
	style = "slide top",
})

hl.animation({
	leaf = "border",
	enabled = true,
	speed = 5,
	bezier = "linear",
})
