hl.on("hyprland.start", function()
	hl.exec_cmd("uwsm app -- waybar")
	hl.exec_cmd("uwsm app -- dunst")
	hl.exec_cmd("/usr/lib/pam_kwallet_init") -- unlock kwallet on login
	hl.exec_cmd("uwsm app -- swayosd-server")
	hl.exec_cmd("uwsm app -- swaybg -i ~/Pictures/current")
	hl.exec_cmd("uwsm app -- wlsunset -t 3500 -l 42.6 -L -73.7") -- albany coordinates
end)
