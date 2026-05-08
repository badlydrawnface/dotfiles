local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
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
	name = "chromium pip",
	match = {
		initial_title = "Picture in picture",
	},
	pin = true,
	float = true,
	size = { 800, 450 },
	border_size = 0,
	opacity = "1 override",
})

-- blur waybar
hl.layer_rule({ match = { namespace = "waybar" }, blur = true })

-- vicinae as well
hl.layer_rule({ match = { namespace = "vicinae" }, blur = true })
