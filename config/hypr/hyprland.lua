require("lua/autostart")
require("lua/binds")
require("lua/envs")
require("lua/input")
require("lua/looknfeel")
require("lua/misc")
require("lua/perms")
require("lua/window")

-- it looks like conditionals aren't working for me
require("themes/current")

-- check the hostname to apply configs per-system
if io.open("/etc/hostname") then
	local file = io.open("/etc/hostname", "r")
	local hostname = file:read()
	file:close()
	if hostname == "framework" then
		require("lua/monitors-laptop")
	else
		-- TODO put gaming pc configs here
	end
end
