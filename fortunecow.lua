local wibox			= require("wibox")
local naughty       = require("naughty")
local awful         = require("awful")
local beautiful     = require("beautiful")

fortunecow = {}

local function cowmaker()
	widget = wibox.widget.imagebox()
	widget:set_image(os.getenv("HOME") .. "/.config/awesome/fortunecow/icons/image.png")
	
	local cownoti = nil
	function widget:hidecow()
		if cownoti ~= nil then
			naughty.destroy(cownoti)
			cownoti = nil
		end
	end

	function widget:showcow()
		widget:hidecow()
		local cowtext = assert(io.popen("fortune | cowsay -f skeleton"))
		cownoti = naughty.notify({
			title = "Cow Fortune",
			text = cowtext:read("*all"),
			timeout = 0,
			font = "monospace 8",
			screen = mouse.screen
		})
	end
	
	widget:connect_signal('mouse::enter', function () widget:showcow() end)
	widget:connect_signal('mouse::leave', function () widget:hidecow() end)
	return widget
end

return setmetatable(fortunecow, {__call = function () return cowmaker() end})
