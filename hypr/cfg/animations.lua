-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--  ANIMATIONS
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- 1. Defining God-Tier Curves
hl.curve("superSilk", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })
hl.curve("softBounce", { type = "bezier", points = { { 0.34, 1.56 }, { 0.64, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })

-- 2. Applying the Smoothness
hl.animation({ leaf = "global", enabled = true, speed = 10, curve = "default" })

-- Windows: High-end pop with a buttery finish
hl.animation({ leaf = "windows", enabled = true, speed = 7, curve = "superSilk", style = "popin 85%" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 7, curve = "softBounce", style = "popin 85%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, curve = "superSilk", style = "popin 80%" })

-- Workspaces: Cinematic Slide
hl.animation({ leaf = "workspaces", enabled = true, speed = 8, curve = "superSilk", style = "slide" })

-- Fading: Fast but smooth
hl.animation({ leaf = "fadeIn", enabled = true, speed = 5, curve = "linear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 5, curve = "linear" })

-- Layers: Dropping from heaven
hl.animation({ leaf = "layers", enabled = true, speed = 6, curve = "superSilk", style = "slide top" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 6, curve = "superSilk", style = "slide top" })

-- Border: Keep it fast so it reacts instantly to focus changes
hl.animation({ leaf = "border", enabled = true, speed = 5, curve = "default" })
